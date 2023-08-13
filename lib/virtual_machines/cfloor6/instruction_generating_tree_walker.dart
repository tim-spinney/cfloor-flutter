import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/generated/cfloor6/CFloor6Parser.dart';
import 'package:cfloor_flutter/generated/cfloor6/CFloor6BaseListener.dart';
import 'package:cfloor_flutter/virtual_machines/cfloor_array.dart';
import '../built_in_globals.dart';
import '../instructions.dart';
import '../instruction_generating_tree_walker.dart';
import '../data_type.dart';
import '../instruction.dart';
import '../virtual_machine.dart';
import '../virtual_memory.dart';

// hack: this exists so we have a base type that implements InstructionGeneratingTreeWalker
// to satisfy InstructionGeneratorUtils' "on" type narrowing
abstract class _CFloor6TreeWalkerBase extends CFloor6BaseListener implements InstructionGeneratingTreeWalker {
}

class CFloor6TreeWalker extends _CFloor6TreeWalkerBase with RegisterManager, InstructionGeneratorUtils, VariableDeclarationManager {
  static final _interpolationRegex = RegExp(r"\$[a-z][a-z_]*");

  @override
  final VirtualMachine virtualMachine;

  final List<Instruction> _instructions = [];
  final List<_IfBlock> _ifBlocks = [];

  final Map<String, DataType> _arrayVariableInnerTypes = {};

  List<Instruction> get _currentInstructionTarget => _ifBlocks.isEmpty
    ? _instructions
    : _ifBlocks.last.branches.last.body;

  @override
  final List<String> semanticErrors = [];

  @override
  get builtInVariables => builtInMathConstants;

  CFloor6TreeWalker(this.virtualMachine);
  
  @override
  void exitProgram(ProgramContext ctx) {
    // TODO: trim no-ops
    _instructions.forEach(virtualMachine.addInstruction);
  }

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    _handleDeclarationAssignment(ctx.type()!, ctx.assignment()!, ctx);
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    // Verify that lhs was previously declared. Only necessary for assign
    // since declAssign is the declaration.
    final assignment = ctx.assignment()!;
    final variableName = assignment.variableAccessor()!.Identifier()!.text!;
    final startToken = assignment.variableAccessor()!.Identifier()!.symbol;
    checkDeclareBeforeUse(variableName, startToken);
    checkConstantAssignment(variableName, startToken);
    _handleAssignment(assignment);
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    late final DataSource dataSource;
    if(ctx.variableAccessor() != null) {
      dataSource = _handleVariableAccessor(ctx.variableAccessor()!);
    } else if(ctx.Number() != null) {
      dataSource = sourceFromNumericConstant(ctx.Number()!.text!);
    } else {
      dataSource = _handleStringLiteral(ctx.StringLiteral()!.text!, ctx.StringLiteral()!.symbol);
    }
    _addInstruction(WriteInstruction(getTextRange(ctx), virtualMachine.consoleState, dataSource));
  }

  @override
  void enterIfBlock(IfBlockContext ctx) {
    _ifBlocks.add(_IfBlock());
  }

  @override
  void exitIfBlock(IfBlockContext ctx) {
    final ifBlock = _ifBlocks.removeLast();
    final endOfBlockJumpPlaceholderIndices = <int>[];
    for(int i = 0; i < ctx.ifStatements().length; i++) {
      final branchBody = ifBlock.branches[i];
      final branchConditional = ctx.ifStatement(i)!.booleanExpression()!;
      final branchRegister = _handleBooleanExpression(branchConditional);
      final jumpOffset = branchBody.body.length + 2; // +2 to go 1 past the no-op
      _addInstruction(JumpIfFalseInstruction(getTextRange(branchConditional), branchRegister, jumpOffset, virtualMachine));
      branchBody.body.forEach(_addInstruction);
      _addInstruction(NoOpInstruction(getTextRange(ctx)));
      endOfBlockJumpPlaceholderIndices.add(_currentInstructionTarget.length - 1);
    }
    if(ctx.elseBlock() != null) {
      final elseBody = ifBlock.branches.last;
      elseBody.body.forEach(_addInstruction);
    }
    _addInstruction(NoOpInstruction(getTextRange(ctx)));
    final instructionList = _currentInstructionTarget;
    final jumpDestination = instructionList.length - 1;
    // do not include instruction we just added or else it will end up in a loop
    for(final index in endOfBlockJumpPlaceholderIndices) {
      instructionList[index] = JumpInstruction(getTextRange(ctx), jumpDestination - index, virtualMachine);
    }
  }

  @override
  void enterIfStatement(IfStatementContext ctx) {
    _ifBlocks.last.branches.add(_IfBranch());
  }

  @override
  void enterElseBlock(ElseBlockContext ctx) {
    _ifBlocks.last.branches.add(_IfBranch());
  }

  @override
  void enterWhileLoop(WhileLoopContext ctx) {
    final block = _IfBlock();
    block.branches.add(_IfBranch());
    _ifBlocks.add(block);
  }

  @override
  void exitWhileLoop(WhileLoopContext ctx) {
    final booleanExpression = ctx.booleanExpression()!;
    final block = _ifBlocks.removeLast();
    final jumpToStartIndex = _currentInstructionTarget.length;
    final branchRegister = _handleBooleanExpression(booleanExpression);
    final branch = block.branches.first;
    final falseJumpOffset = branch.body.length + 2; // +2 to go 1 past the jump back to start
    _addInstruction(JumpIfFalseInstruction(getTextRange(booleanExpression), branchRegister, falseJumpOffset, virtualMachine));
    branch.body.forEach(_addInstruction);
    _addInstruction(JumpInstruction(getTextRange(ctx), jumpToStartIndex - _currentInstructionTarget.length, virtualMachine));
    _addInstruction(NoOpInstruction(getTextRange(ctx)));
  }

  @override
  void enterForLoop(ForLoopContext ctx) {
    // push two blocks: one for initializer context, one for body of loop
    final initBlock = _IfBlock();
    initBlock.branches.add(_IfBranch());
    _ifBlocks.add(initBlock);
    final initExpression = ctx.typedAssignment()!;
    _handleDeclarationAssignment(initExpression.type()!, initExpression.assignment()!, initExpression);
    final loopBlock = _IfBlock();
    loopBlock.branches.add(_IfBranch());
    _ifBlocks.add(loopBlock);
  }

  @override
  void exitForLoop(ForLoopContext ctx) {
    // append incrExpression to end of loop block before popping loop block
    // off stack so it goes at the end of the loop before jumping to conditional
    final incrExpression = ctx.assignment()!;
    _handleAssignment(incrExpression);

    final loopBlock = _ifBlocks.removeLast();
    final jumpToStartIndex = _currentInstructionTarget.length;
    final booleanExpression = ctx.booleanExpression()!;
    final branchRegister = _handleBooleanExpression(booleanExpression);
    final branch = loopBlock.branches.first;
    final falseJumpOffset = branch.body.length + 2; // +2 to go 1 past the jump back to start
    _addInstruction(JumpIfFalseInstruction(getTextRange(booleanExpression), branchRegister, falseJumpOffset, virtualMachine));
    branch.body.forEach(_addInstruction);
    _addInstruction(JumpInstruction(getTextRange(ctx), jumpToStartIndex - _currentInstructionTarget.length, virtualMachine));
    _addInstruction(NoOpInstruction(getTextRange(ctx)));

    // remove and flatten initializer block after processing loop block
    final initializerBlock = _ifBlocks.removeLast();
    initializerBlock.branches.first.body.forEach(_addInstruction);
  }


  @override
  void enterBlock(BlockContext ctx) {
    _addInstruction(PushScopeInstruction(getTextRange(ctx), virtualMachine.memory));
    pushVariableScope();
  }

  @override
  void exitBlock(BlockContext ctx) {
    _addInstruction(PopScopeInstruction(getTextRange(ctx), virtualMachine.memory));
    popVariableScope();
  }

  DataSource _handleReadExpression(ReadFunctionExpressionContext ctx) {
    final type = RegExp(r"^read([A-Z][a-z]*)").firstMatch(ctx.text)?.group(1)?.toLowerCase();
    final readType = switch(type) {
      'int' => DataType.int,
      'float' => DataType.float,
      'string' => DataType.string,
      _ => throw Exception('Unknown read type: $ctx.text'),
    };
    final destination = allocateRegister(readType);
    _addInstruction(ReadInstruction(getTextRange(ctx), virtualMachine.consoleState, destination, readType));
    return destination.toSource();
  }

  DataSource _handleMathExpression(MathExpressionContext ctx) {
    final leftOperand = ctx.mathOperand(0)!;
    if(ctx.MathOperator() == null) {
      return _handleMathOperand(leftOperand);
    }
    final mathOperator = MathOperator.bySymbol[ctx.MathOperator()!.text]!;
    final rightOperand = ctx.mathOperand(1)!;
    final leftDataSource = _handleMathOperand(leftOperand);
    final rightDataSource = _handleMathOperand(rightOperand);
    final targetRegister = _recycleOrAllocateRegister(leftDataSource, rightDataSource, combineNumericDataTypes(leftDataSource.dataType, rightDataSource.dataType, ctx.start!));

    if(mathOperator == MathOperator.modulo) {
      // modulo is a special case because it only works on integers
      if(leftDataSource.dataType != DataType.int || rightDataSource.dataType != DataType.int) {
        semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: modulo operator only works on integers.');
      }
    }

    _addInstruction(
        MathInstruction(
          getTextRange(ctx),
          mathOperator,
          leftDataSource,
          rightDataSource,
          targetRegister,
        )
    );
    return targetRegister.toSource();
  }

  DataSource _handleMathOperand(MathOperandContext ctx) {
    if(ctx.mathExpression() != null) {
      return _handleMathExpression(ctx.mathExpression()!);
    } else if(ctx.variableAccessor() != null) {
      return _handleVariableAccessor(ctx.variableAccessor()!);
    } else if(ctx.Number() != null) {
      return sourceFromNumericConstant(ctx.Number()!.text!);
    } else if(ctx.mathFunctionExpression() != null) {
      return _handleMathFunctionExpression(ctx.mathFunctionExpression()!);
    } else if(ctx.stringLengthExpression() != null) {
      return _handleStringLengthExpression(ctx.stringLengthExpression()!);
    } else {
      throw Exception('Unknown math operand type');
    }
  }

  DataSource _handleBooleanExpression(BooleanExpressionContext ctx) {
    if(ctx.UnaryBooleanOperator() != null) {
      final operandSource = _handleBooleanOperand(ctx.booleanOperand(0)!);
      final destination = allocateRegister(DataType.bool);
      _addInstruction(
        BooleanNegationInstruction(getTextRange(ctx), operandSource, destination)
      );
      return destination.toSource();
    } else if(ctx.booleanOperands().isNotEmpty) {
      final left = ctx.booleanOperand(0)!;
      final leftDataSource = _handleBooleanOperand(left);
      if(ctx.booleanOperands().length == 1) {
        return leftDataSource;
      }
      final rightDataSource = _handleBooleanOperand(ctx.booleanOperand(1)!);
      final targetRegister = _recycleOrAllocateRegister(leftDataSource, rightDataSource, DataType.bool);
      final booleanOperator = BooleanOperator.bySymbol[ctx.BinaryBooleanOperator()!.text!]!;
      _addInstruction(
          BinaryBooleanInstruction(
            getTextRange(ctx),
            booleanOperator,
            leftDataSource,
            rightDataSource,
            targetRegister,
          )
      );
      return targetRegister.toSource();
    } else if(ctx.Comparator() != null) {
      final leftDataSource = _handleMathOperand(ctx.mathOperand(0)!);
      final rightDataSource = _handleMathOperand(ctx.mathOperand(1)!);
      // TODO: recycle register, but have to convert register's data type on recycling somehow
      final targetRegister = allocateRegister(DataType.bool);
      final comparisonOperator = ComparisonOperator.bySymbol[ctx.Comparator()!.text!]!;
      _addInstruction(
          ComparisonInstruction(
            getTextRange(ctx),
            comparisonOperator,
            leftDataSource,
            rightDataSource,
            targetRegister,
          )
      );
      return targetRegister.toSource();
    }
    throw Exception('Unknown boolean expression type: ${ctx.text}');
  }

  DataSource _handleBooleanOperand(BooleanOperandContext ctx) {
    if(ctx.BooleanLiteral() != null) {
      return ConstantDataSource(DataType.bool, bool.parse(ctx.text));
    } else if(ctx.variableAccessor() != null) {
      return _handleVariableAccessor(ctx.variableAccessor()!);
    } else if(ctx.booleanExpression() != null) {
      return _handleBooleanExpression(ctx.booleanExpression()!);
    } else {
      throw Exception('Unknown boolean operand type');
    }
  }

  DataSource _handleStringLiteral(String literalText, Token stringToken) {
    final withoutQuotes = literalText.substring(1, literalText.length - 1);
    final matches = _interpolationRegex.allMatches(withoutQuotes).toList();
    if(matches.isEmpty) {
      return ConstantDataSource(DataType.string, withoutQuotes);
    }
    int endOfPrevious = 0;
    final outputRegister = allocateRegister(DataType.string);
    for(final match in matches) {
      final literalFromPrevious = ConstantDataSource(DataType.string, withoutQuotes.substring(endOfPrevious, match.start).replaceAll(r"$$", r"$"));
      final variableName = match.group(0)!.substring(1);
      final variableSource = sourceFromMemory(variableName, stringToken);
      final textRange = TextRange(stringToken.startIndex + match.start + 1, stringToken.startIndex + match.end );
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
          DataType.string, withoutQuotes.substring(endOfPrevious));
      final textRange = TextRange(stringToken.startIndex + endOfPrevious + 1, stringToken.stopIndex);
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

  _handleMathFunctionExpression(MathFunctionExpressionContext ctx) {
    final function = MathFunction.values.firstWhere((fn) => fn.name == ctx.text.split('(')[0]);
    final dataSource = _handleMathExpression(ctx.mathExpression()!);
    final targetRegister = allocateRegister(dataSource.dataType);
    _addInstruction(
        MathFunctionInstruction(
          getTextRange(ctx),
          function,
          dataSource,
          targetRegister,
        )
    );
    return targetRegister.toSource();
  }

  DataSource _handleStringLengthExpression(StringLengthExpressionContext ctx) {
    final stringSource = _handleVariableAccessor(ctx.variableAccessor()!);
    // TODO: make second source optional
    final lengthRegister = _recycleOrAllocateRegister(stringSource, stringSource, DataType.int);
    _addInstruction(
        StringLengthInstruction(
            getTextRange(ctx),
            stringSource,
            lengthRegister
        )
    );
    return lengthRegister.toSource();
  }

  RegisterDataDestination _recycleOrAllocateRegister(DataSource left, DataSource right, DataType dataType) {
    if(left is RegisterMemorySource) {
      return left.toDestination();
    } else if(right is RegisterMemorySource) {
      return right.toDestination();
    } else {
      return allocateRegister(dataType);
    }
  }

  _addInstruction(Instruction instruction) {
    _currentInstructionTarget.add(instruction);
  }

  // records that the variable was declared and with which type
  void _handleDeclarationAssignment(TypeContext typeNode, AssignmentContext assignment, ParserRuleContext ctx) {
    if(assignment.variableAccessor()!.arrayIndexer() != null) {
      semanticErrors.add('Semantic error at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: you can only declare the type of a whole array, not a specific element.');
    }
    final variableName = assignment.variableAccessor()!.Identifier()!.text!;
    final isArrayType = typeNode.text.contains('array');
    final variableType = isArrayType ? DataType.array : DataType.values.firstWhere((type) => type.name == typeNode.text);
    if(isArrayType) {
      _arrayVariableInnerTypes[variableName] = DataType.values.firstWhere((type) => type.name == typeNode.Primitive()!.text);
    }
    addDeclaration(variableName, variableType, ctx.start!);
    _handleAssignment(assignment);
  }

  void _handleAssignment(AssignmentContext ctx) {
    // Get data source by processing rhs expression
    DataSource? dataSource;
    if(ctx.readFunctionExpression() != null) {
      dataSource = _handleReadExpression(ctx.readFunctionExpression()!);
    } else if(ctx.mathExpression() != null) {
      dataSource = _handleMathExpression(ctx.mathExpression()!);
    } else if(ctx.StringLiteral() != null) {
      dataSource = _handleStringLiteral(ctx.StringLiteral()!.text!, ctx.StringLiteral()!.symbol);
    } else if(ctx.booleanExpression() != null) {
      dataSource = _handleBooleanExpression(ctx.booleanExpression()!);
    } else if(ctx.arrayInitializer() != null) {
      dataSource = _handleArrayInitializer(ctx.arrayInitializer()!);
    } else if(ctx.arrayLiteral() != null) {
      dataSource = _handleArrayLiteral(ctx.arrayLiteral()!);
    } // else there was a syntax error

    if(dataSource != null) {
      // validate rhs type matches lhs type
      final destinationName = ctx.variableAccessor()!.Identifier()!.text!;
      final arrayIndexer = ctx.variableAccessor()?.arrayIndexer()?.text;
      final destinationIndex = arrayIndexer == null ? null : int.tryParse(arrayIndexer);

      // get lhs type - either it was declared previously, this is part of a
      // declAssign, or we'll end up with a declare before use error anyway
      DataType? variableType = getDeclaredType(destinationName);
      if(variableType == null && ctx.parent is DeclAssignStatementContext) {
        variableType = DataType.values.firstWhere((type) => type.name == (ctx.parent as DeclAssignStatementContext).type()!.text);
      }
      if(variableType != null) {
        _checkTypeConversion(dataSource.dataType, destinationName, variableType, ctx);
      }

      _addInstruction(
          AssignmentInstruction(
            getTextRange(ctx),
            VariableDataDestination(variableType ?? dataSource.dataType, virtualMachine.memory, destinationName, index: destinationIndex),
            dataSource,
          )
      );
    }
    // recycle any registers used by expressions
    nextRegister = 0;
  }

  DataSource _handleArrayInitializer(ArrayInitializerContext ctx) {
    final length = int.parse(ctx.Number()!.text!);
    final typeName = ctx.Primitive()!.text!;
    final dataType = DataType.values.firstWhere((type) => type.name == typeName);
    return ConstantDataSource(DataType.array, CFloorArray.filled(dataType, length));
  }

  MemorySource _handleArrayLiteral(ArrayLiteralContext ctx) {
    throw UnimplementedError();
  }

  MemorySource _handleVariableAccessor(VariableAccessorContext accessor) {
    final variableName = accessor.Identifier()!.text!;
    checkDeclareBeforeUse(variableName, accessor.start!);
    if(accessor.arrayIndexer() == null) {
      return VariableMemorySource(getDeclaredType(variableName)!, virtualMachine.memory, variableName);
    }

    final arrayIndexer = accessor.arrayIndexer()!;
    final arrayName = accessor.Identifier()!.text!;
    final arrayType = getDeclaredType(arrayName)!;
    if(arrayType != DataType.array) {
      semanticErrors.add('Semantic error at ${accessor.start!.line}:${accessor.start!.charPositionInLine}: cannot index into non-array variable "$arrayName".');
      throw Exception('Cannot index into non-array variable');
    }
    DataSource indexDataSource;
    if(arrayIndexer.Number() != null) {
      indexDataSource = ConstantDataSource(DataType.int, int.parse(arrayIndexer.Number()!.text!));
    } else {
      indexDataSource = _handleMathExpression(arrayIndexer.mathExpression()!);
    }
    if(indexDataSource.dataType != DataType.int) {
      semanticErrors.add('Semantic error at ${arrayIndexer.start!.line}:${arrayIndexer.start!.charPositionInLine}: array index must be an integer.');
      throw Exception('Array index must be an integer');
    }
    final arrayInnerType = _arrayVariableInnerTypes[arrayName]!;
    final arrayDataSource = sourceFromMemory(arrayName, accessor.Identifier()!.symbol);
    final targetRegister = _recycleOrAllocateRegister(arrayDataSource, indexDataSource, arrayInnerType);
    _addInstruction(ArrayDereferenceInstruction(getTextRange(accessor), arrayDataSource, indexDataSource, targetRegister));
    return targetRegister.toSource();
  }

  _checkTypeConversion(DataType sourceType, String destinationName, DataType destinationType, ParserRuleContext ctx) {
    if(sourceType == destinationType) {
      return;
    } else if(sourceType == DataType.int && destinationType == DataType.float) {
      return;
    } else if(destinationType == DataType.array) {
      // RHS could be expression that can only be evaluated at runtime so we have to delay checking until then
      if(sourceType == DataType.array) {
        return;
      }
      final destinationInnerType = _arrayVariableInnerTypes[destinationName]!;
      if(checkTypeConversion(sourceType, destinationInnerType, ctx)) {
        return;
      }
    }
    semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: cannot assign ${sourceType.name} to a(n) ${destinationType.name}.');
  }
}

class _IfBranch {
  final List<Instruction> body = [];
}

class _IfBlock {
  final List<_IfBranch> branches = [];
}