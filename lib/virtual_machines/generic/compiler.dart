import 'package:antlr4/antlr4.dart';
import '../cfloor_array.dart';
import '../instruction.dart';
import '../instruction_generating_tree_walker.dart';
import '../data_type.dart';
import '../instructions.dart';
import '../virtual_memory.dart';
import '../wrappers/identifier.dart';
import '../wrappers/length_function_expression.dart';
import '../wrappers/read_expression.dart';
import '../wrappers/assignment.dart';
import '../wrappers/boolean_expression.dart';
import '../wrappers/boolean_operand.dart';
import '../wrappers/math_expression.dart';
import '../wrappers/math_function_expression.dart';
import '../wrappers/math_operand.dart';
import '../wrappers/string_literal.dart';
import '../wrappers/write_statement.dart';
import '../wrappers/array_initializer.dart';
import '../wrappers/array_literal.dart';
import '../wrappers/for_loop.dart';
import '../wrappers/variable_accessor.dart';
import '../wrappers/while_loop.dart';
import '../wrappers/if_block.dart';

mixin GenericCompiler on VariableDeclarationManager {
  static final _interpolationRegex = RegExp(r"\$[a-z][a-z_]*");

  RegisterManager get registerManager;

  final List<_CodeBlock> _codeBlocks = [_CodeBlock(initialBranches: [_CodeSequence()])];
  List<Instruction> get _currentInstructionTarget => _codeBlocks.last.branches.last.body;

  List<Instruction> get topLevelInstructions => _codeBlocks.first.branches.first.body;

  handleDeclAssignStatement(Assignment assignment, CompositeDataType destinationType) {
    if(assignment.destination.arrayIndexer != null) {
      semanticErrorCollector.add('Semantic error at ${assignment.textRange.startPosition}: you can only declare the type of a whole array, not a specific element.');
    }
    handleAssignment(assignment, destinationType);
    addDeclaration(assignment.destination.variableIdentifier.variableName, destinationType, assignment.textRange);
  }

  handleAssignStatement(Assignment assignment) {
    final id = assignment.destination.variableIdentifier;
    // Verify that lhs was previously declared. Only necessary for assign
    // since declAssign is the declaration.
    checkDeclareBeforeUse(id);
    checkConstantAssignment(id);

    final destinationType = getDeclaredType(id.variableName)!;
    handleAssignment(assignment, destinationType);
  }

  handleAssignment(Assignment ctx, CompositeDataType destinationType) {
    DataSource? dataSource;
    if(ctx.readExpression != null) {
      dataSource = _handleReadExpression(ctx.readExpression!);
    } else if(ctx.mathExpression != null) {
      dataSource = _handleMathExpression(ctx.mathExpression!);
    } else if(ctx.stringLiteral != null) {
      dataSource = _handleStringLiteral(ctx.stringLiteral!);
    } else if(ctx.booleanExpression != null) {
      dataSource = _handleBooleanExpression(ctx.booleanExpression!);
    } else if(ctx.arrayInitializer != null) {
      dataSource = _handleArrayInitializer(ctx.arrayInitializer!);
    } else {
      dataSource = _handleArrayLiteral(ctx.arrayLiteral!);
    }
    final destinationAccessor = ctx.destination;
    DataSource? indexSource;
    if(destinationAccessor.arrayIndexer != null) {
      indexSource = _handleMathExpression(destinationAccessor.arrayIndexer!);
    }
    checkTypeConversion(dataSource.dataType, indexSource == null ? destinationType : destinationType.innerType!.toCompositeType(), ctx.textRange);
    _addInstruction(
        AssignmentInstruction(
          ctx.textRange,
          VariableDataDestination(
            destinationType,
            virtualMachine.memory,
            ctx.destination.variableIdentifier.variableName,
            indexSource,
          ),
          dataSource,
        )
    );
    registerManager.resetRegisterUsage();
  }

  void handleWriteStatement(WriteStatement ctx) {
    late final DataSource dataSource;
    if(ctx.number != null) {
      // TODO: check if this should be float type
      dataSource = ConstantDataSource(DataType.int.toCompositeType(), ctx.number!);
    } else if(ctx.variableAccessor != null) {
      dataSource = sourceFromMemory(ctx.variableAccessor!.variableIdentifier);
    } else if(ctx.stringLiteral != null) {
      dataSource = _handleStringLiteral(ctx.stringLiteral!);
    } else {
      throw Exception('Write statements must include either a literal or a variable accessor.');
    }
    _addInstruction(WriteInstruction(ctx.textRange, virtualMachine.consoleState, dataSource));
  }

  void handleEnteringIfBlock() {
    _codeBlocks.add(_CodeBlock());
  }

  void handleExitingIfBlock(IfBlock ctx) {
    final ifBlock = _codeBlocks.removeLast();
    final endOfBlockJumpPlaceholderIndices = <int>[];
    for(int i = 0; i < ctx.conditions.length; i++) {
      final branchBody = ifBlock.branches[i];
      final branchConditional = ctx.conditions[i];
      final branchRegister = _handleBooleanExpression(branchConditional);
      final jumpOffset = branchBody.body.length + 2; // +2 to go 1 past the no-op
      _addInstruction(JumpIfFalseInstruction(branchConditional.textRange, branchRegister, jumpOffset, virtualMachine));
      branchBody.body.forEach(_addInstruction);
      _addInstruction(NoOpInstruction(ctx.textRange));
      endOfBlockJumpPlaceholderIndices.add(_currentInstructionTarget.length - 1);
    }
    if(ctx.hasElse) {
      final elseBody = ifBlock.branches.last;
      elseBody.body.forEach(_addInstruction);
    }
    _addInstruction(NoOpInstruction(ctx.textRange));
    final instructionList = _currentInstructionTarget;
    final jumpDestination = instructionList.length - 1;
    // do not include instruction we just added or else it will end up in a loop
    for(final index in endOfBlockJumpPlaceholderIndices) {
      instructionList[index] = JumpInstruction(ctx.textRange, jumpDestination - index, virtualMachine);
    }
  }

  void handleEnteringBranch() {
    _codeBlocks.last.branches.add(_CodeSequence());
  }

  void handleEnteringBlock(TextRange blockTextRange) {
    _addInstruction(PushScopeInstruction(blockTextRange, virtualMachine.memory));
    pushVariableScope();
  }

  void handleExitingBlock(TextRange blockTextRange) {
    _addInstruction(PopScopeInstruction(blockTextRange, virtualMachine.memory));
    popVariableScope();
  }

  void handleEnteringWhileLoop() {
    _addBlockWithSingleBranch();
  }

  void handleExitingWhileLoop(WhileLoop ctx) {
    final booleanExpression = ctx.condition;
    final block = _codeBlocks.removeLast();
    final jumpToStartIndex = _currentInstructionTarget.length;
    final branchRegister = _handleBooleanExpression(booleanExpression);
    final branch = block.branches.first;
    final falseJumpOffset = branch.body.length + 2; // +2 to go 1 past the jump back to start
    _addInstruction(JumpIfFalseInstruction(booleanExpression.textRange, branchRegister, falseJumpOffset, virtualMachine));
    branch.body.forEach(_addInstruction);
    _addInstruction(JumpInstruction(ctx.textRange, jumpToStartIndex - _currentInstructionTarget.length, virtualMachine));
    _addInstruction(NoOpInstruction(ctx.textRange));
  }

  void handleEnteringForLoop(ForLoop ctx) {
    // push two blocks: one for initializer context, one for body of loop
    _addBlockWithSingleBranch();
    handleDeclAssignStatement(ctx.initialAssignment, ctx.initialAssignmentDestinationType);
    _addBlockWithSingleBranch();
  }

  void handleExitingForLoop(ForLoop ctx) {
    // append incrExpression to end of loop block before popping loop block
    // off stack so it goes at the end of the loop before jumping to conditional
    handleAssignStatement(ctx.incrementalAssignment);
    final loopBlock = _codeBlocks.removeLast();
    final jumpToStartIndex = _currentInstructionTarget.length;
    final booleanExpression = ctx.condition;
    final branchRegister = _handleBooleanExpression(booleanExpression);
    final branch = loopBlock.branches.first;
    final falseJumpOffset = branch.body.length + 2; // +2 to go 1 past the jump back to start
    _addInstruction(JumpIfFalseInstruction(booleanExpression.textRange, branchRegister, falseJumpOffset, virtualMachine));
    branch.body.forEach(_addInstruction);
    _addInstruction(JumpInstruction(ctx.textRange, jumpToStartIndex - _currentInstructionTarget.length, virtualMachine));
    _addInstruction(NoOpInstruction(ctx.textRange));

    // remove and flatten initializer block after processing loop block
    final initializerBlock = _codeBlocks.removeLast();
    initializerBlock.branches.first.body.forEach(_addInstruction);
  }

  DataSource _handleReadExpression(ReadExpression readExpression) {
    final destination = registerManager.allocateRegister(readExpression.dataType.toCompositeType());
    _addInstruction(
        ReadInstruction(
            readExpression.textRange,
            virtualMachine.consoleState,
            destination,
            readExpression.dataType)
    );
    return destination.toSource();
  }

  DataSource _handleStringLiteral(StringLiteral ctx) {
    String literalText = ctx.content;
    final withoutQuotes = literalText.substring(1, literalText.length - 1);
    final matches = _interpolationRegex.allMatches(withoutQuotes).toList();
    if(matches.isEmpty) {
      return ConstantDataSource(DataType.string.toCompositeType(), withoutQuotes);
    }
    int endOfPrevious = 0;
    final outputRegister = registerManager.allocateRegister(DataType.string.toCompositeType());
    for(final match in matches) {
      final literalFromPrevious = ConstantDataSource(DataType.string.toCompositeType(), withoutQuotes.substring(endOfPrevious, match.start).replaceAll(r"$$", r"$"));
      final variableName = match.group(0)!.substring(1);
      final variableSource = sourceFromMemory(Identifier(ctx.textRange, variableName));
      final textRange = _StringInterpolationTextRange(ctx.textRange.start + match.start + 1, ctx.textRange.start + match.end, ctx.textRange.startPosition);
      if(endOfPrevious == 0) {
        _addInstruction(
            StringConcatenationInstruction(
                textRange,
                literalFromPrevious,
                variableSource,
                outputRegister
            )
        );
      } else {
        _addInstruction(
            StringConcatenationInstruction(
                textRange,
                outputRegister.toSource(),
                literalFromPrevious,
                outputRegister
            )
        );
        _addInstruction(
            StringConcatenationInstruction(
                textRange,
                outputRegister.toSource(),
                variableSource,
                outputRegister
            )
        );
      }
      endOfPrevious = match.end;
    }
    if(endOfPrevious < withoutQuotes.length) {
      final literalToEnd = ConstantDataSource(
          DataType.string.toCompositeType(), withoutQuotes.substring(endOfPrevious));
      final textRange = _StringInterpolationTextRange(ctx.textRange.start + endOfPrevious + 1, ctx.textRange.end, ctx.textRange.startPosition);
      _addInstruction(
          StringConcatenationInstruction(
              textRange,
              outputRegister.toSource(),
              literalToEnd,
              outputRegister
          )
      );
    }
    return outputRegister.toSource();
  }

  DataSource _handleBooleanExpression(BooleanExpression ctx) {
    if(ctx.isNegation) {
      final operandSource = _handleBooleanOperand(ctx.booleanOperands.first);
      final destination = registerManager.allocateRegister(DataType.bool.toCompositeType());
      _addInstruction(
          BooleanNegationInstruction(ctx.textRange, operandSource, destination)
      );
      return destination.toSource();
    } else if(ctx.booleanOperands.isNotEmpty) {
      final left = ctx.booleanOperands.first;
      final leftDataSource = _handleBooleanOperand(left);
      if(ctx.booleanOperands.length == 1) {
        return leftDataSource;
      }
      final rightDataSource = _handleBooleanOperand(ctx.booleanOperands.last);
      final targetRegister = registerManager.recycleOrAllocateRegister(leftDataSource, rightDataSource, DataType.bool.toCompositeType());
      _addInstruction(
          BinaryBooleanInstruction(
            ctx.textRange,
            ctx.binaryOperator!,
            leftDataSource,
            rightDataSource,
            targetRegister,
          )
      );
      return targetRegister.toSource();
    } else if(ctx.comparator != null) {
      final leftDataSource = _handleMathOperand(ctx.mathOperands.first);
      final rightDataSource = _handleMathOperand(ctx.mathOperands.last);
      // TODO: recycle register, but have to convert register's data type on recycling somehow
      final targetRegister = registerManager.allocateRegister(DataType.bool.toCompositeType());
      _addInstruction(
          ComparisonInstruction(
            ctx.textRange,
            ctx.comparator!,
            leftDataSource,
            rightDataSource,
            targetRegister,
          )
      );
      return targetRegister.toSource();
    }
    throw Exception('Unknown boolean expression type.');
  }

  DataSource _handleBooleanOperand(BooleanOperand ctx) {
    if(ctx.literalValue != null) {
      return ConstantDataSource(DataType.bool.toCompositeType(), ctx.literalValue!);
    } else if(ctx.variableAccessor != null) {
      return _handleVariableAccessor(ctx.variableAccessor!);
    } else if(ctx.booleanExpression != null) {
      return _handleBooleanExpression(ctx.booleanExpression!);
    } else {
      throw Exception('Unknown boolean operand type.');
    }
  }

  DataSource _handleMathOperand(MathOperand ctx) {
    if (ctx.mathExpression != null) {
      return _handleMathExpression(ctx.mathExpression!);
    } else if (ctx.variableAccessor != null) {
      return _handleVariableAccessor(ctx.variableAccessor!);
    } else if (ctx.numberText != null) {
      return ConstantDataSource.fromNumericConstant(ctx.numberText!);
    } else if(ctx.mathFunction != null) {
      return _handleMathFunctionExpression(ctx.mathFunction!);
    } else if(ctx.lengthFunction != null) {
      return _handleLengthFunctionExpression(ctx.lengthFunction!);
    } else {
      throw Exception('Unknown math operand type');
    }
  }

  DataSource _handleMathExpression(MathExpression ctx) {
    final leftOperand = ctx.left!;
    final leftDataSource = _handleMathOperand(leftOperand);
    final mathOperator = ctx.operator;
    if(mathOperator == null) {
      return leftDataSource;
    }
    final rightOperand = ctx.right!;
    final rightDataSource = _handleMathOperand(rightOperand);
    final targetRegister = registerManager.recycleOrAllocateRegister(
      leftDataSource,
      rightDataSource,
      combineNumericDataTypes(leftDataSource.dataType.dataType, rightDataSource.dataType.dataType, ctx.textRange).toCompositeType()
    );

    if(mathOperator == MathOperator.modulo) {
      // modulo is a special case because it only works on integers
      if(leftDataSource.dataType.dataType != DataType.int || rightDataSource.dataType.dataType != DataType.int) {
        semanticErrorCollector.add('Type mismatch at ${ctx.textRange.startPosition}: modulo operator only works on integers.');
      }
    }

    _addInstruction(
        MathInstruction(
          ctx.textRange,
          mathOperator,
          leftDataSource,
          rightDataSource,
          targetRegister,
        )
    );
    return targetRegister.toSource();
  }

  num? processNumericLiteral(TerminalNode? node) {
    final text = node?.text;
    if(text == null) {
      return null;
    }
    final asInt = int.tryParse(text);
    if(asInt != null) {
      return asInt;
    }
    final asDouble = double.tryParse(text);
    if(asDouble != null) {
      return asDouble;
    }
    return null;
  }

  DataSource _handleMathFunctionExpression(MathFunctionExpression ctx) {
    final dataSource = _handleMathExpression(ctx.mathExpression!);
    final targetRegister = registerManager.allocateRegister(dataSource.dataType);
    _addInstruction(
        MathFunctionInstruction(
          ctx.textRange,
          ctx.function,
          dataSource,
          targetRegister,
        )
    );
    return targetRegister.toSource();
  }

  DataSource _handleLengthFunctionExpression(LengthFunctionExpression ctx) {
    final stringSource = _handleVariableAccessor(ctx.variableAccessor);
    // TODO: make second source optional
    final targetRegister = registerManager.recycleOrAllocateRegister(stringSource, stringSource, DataType.int.toCompositeType());
    _addInstruction(
        StringLengthInstruction(
            ctx.textRange,
            stringSource,
            targetRegister
        )
    );
    return targetRegister.toSource();
  }

  DataSource _handleVariableAccessor(VariableAccessor ctx) {
    if(ctx.arrayIndexer == null) {
      return sourceFromMemory(ctx.variableIdentifier);
    }

    final declaredType = getDeclaredType(ctx.variableIdentifier.variableName);
    if(declaredType?.dataType != DataType.array) {
      semanticErrorCollector.add('Semantic error at ${ctx.textRange.startPosition}: variable "${ctx.variableIdentifier.variableName}" is not an array and cannot be accessed using [].');
      throw Exception('Cannot index into non-array variable');
    }
    DataSource indexSource = _handleMathExpression(ctx.arrayIndexer!);
    if(indexSource.dataType.dataType != DataType.int) {
      semanticErrorCollector.add('Semantic error at ${ctx.textRange.startPosition}: array index must be an integer.');
      throw Exception('Array index must be an integer');
    }
    final arraySource = sourceFromMemory(ctx.variableIdentifier);
    final targetRegister = registerManager.recycleOrAllocateRegister(arraySource, indexSource, declaredType!.innerType!.toCompositeType());
    _addInstruction(ArrayDereferenceInstruction(ctx.textRange, arraySource, indexSource, targetRegister));
    return targetRegister.toSource();
  }

  DataSource _handleArrayInitializer(ArrayInitializer ctx) {
    return ConstantDataSource(CompositeDataType(DataType.array, ctx.innerType), CFloorArray.filled(ctx.innerType, ctx.length));
  }

  DataSource _handleArrayLiteral(ArrayLiteral ctx) {
    throw UnimplementedError();
  }

  _addInstruction(Instruction instruction) {
    _currentInstructionTarget.add(instruction);
  }

  _addBlockWithSingleBranch() {
    _codeBlocks.add(_CodeBlock(initialBranches: [_CodeSequence()]));
  }
}

// hack: we don't have tokens to represent the start and end of interpolation inserts,
// so this class provides the TextRange interface using fixed positions instead of tokens
class _StringInterpolationTextRange implements TextRange {
  @override
  final int start, end;
  @override
  final String startPosition;

  _StringInterpolationTextRange(this.start, this.end, this.startPosition);
}

class _CodeSequence {
  final List<Instruction> body = [];
}

class _CodeBlock {
  final List<_CodeSequence> branches;

  _CodeBlock({List<_CodeSequence>? initialBranches}) : branches = initialBranches ?? [];
}