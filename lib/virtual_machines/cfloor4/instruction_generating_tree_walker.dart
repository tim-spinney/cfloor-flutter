import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/generated/cfloor4/CFloor4Parser.dart';
import 'package:cfloor_flutter/generated/cfloor4/CFloor4BaseListener.dart';
import '../instructions.dart';
import '../instruction_generating_tree_walker.dart';
import '../data_type.dart';
import '../instruction.dart';
import '../virtual_machine.dart';
import '../virtual_memory.dart';

class CFloor4TreeWalker extends CFloor4BaseListener with RegisterManager implements InstructionGeneratingTreeWalker {
  static final _interpolationRegex = RegExp(r"\$[a-z][a-z_]*");

  final List<Map<String, DataType>> _variableDeclarations = [{}];

  @override
  final VirtualMachine virtualMachine;

  final List<Instruction> _instructions = [];
  final List<_IfBlock> _ifBlocks = [];

  List<Instruction> get _currentInstructionTarget => _ifBlocks.isEmpty
    ? _instructions
    : _ifBlocks.last.branches.last.body;

  _addInstruction(Instruction instruction) {
    _currentInstructionTarget.add(instruction);
  }

  @override
  final List<String> semanticErrors = [];

  CFloor4TreeWalker(this.virtualMachine);
  
  @override
  void exitProgram(ProgramContext ctx) {
    // TODO: trim no-ops
    _instructions.forEach(virtualMachine.addInstruction);
  }

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    // record that the variable was declared and what type it has
    final variableName = ctx.assignment()!.Identifier()!.text!;
    final variableType = DataType.values.firstWhere((type) => type.name == ctx.Type()!.text);
    _variableDeclarations.last[variableName] = variableType;
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    // Verify that lhs was previously declared. Only necessary for assign
    // since declAssign is the declaration.
    final variableName = ctx.assignment()!.Identifier()!.text!;
    _checkDeclareBeforeUse(variableName, ctx.assignment()!.start!);
  }

  @override
  void exitAssignment(AssignmentContext ctx) {
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
    } // else there was a syntax error
    if(dataSource != null) {
      // validate rhs type matches lhs type
      final variableName = ctx.Identifier()!.text!;

      // get lhs type - either it was declared previously, this is part of a
      // declAssign, or we'll end up with a declare before use error anyway
      DataType? variableType = _getDeclaredType(variableName);
      if(variableType == null && ctx.parent is DeclAssignStatementContext) {
        variableType = DataType.values.firstWhere((type) => type.name == (ctx.parent as DeclAssignStatementContext).Type()!.text);
      }
      if(variableType != null) {
        _checkTypeConversion(dataSource.dataType, variableType, ctx);
      }

      _addInstruction(
          AssignmentInstruction(
            _getTextRange(ctx),
            VariableDataDestination(variableType ?? dataSource.dataType, virtualMachine.memory, variableName),
            dataSource,
          )
      );
    }
    // recycle any registers used by expressions
    nextRegister = 0;
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    late final DataSource dataSource;
    if(ctx.Identifier() != null) {
      dataSource = _sourceFromMemory(ctx.Identifier()!.text!, ctx.Identifier()!.symbol);
    } else if(ctx.Number() != null) {
      dataSource = _sourceFromConstant(ctx.Number()!.text!);
    } else {
      dataSource = _handleStringLiteral(ctx.StringLiteral()!.text!, ctx.StringLiteral()!.symbol);
    }
    _addInstruction(WriteInstruction(_getTextRange(ctx), virtualMachine.consoleState, dataSource));
  }
/*
int x = 1;
x = x + 2;
if(x > 2) {
  int y = x % 6;
  if(y < 5) {
    write(y);
  } else if(y < 4) {
    y = y - 1;
    write(y);
  } else {
    y = x / 2;
    write(y);
  }
} else {
  if(x < 0) {
    write(x);
  } else {
    write("x is 0 or 1");
  }
}
write(x);
 */
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
      _addInstruction(JumpIfFalseInstruction(_getTextRange(branchConditional), branchRegister, jumpOffset, virtualMachine));
      branchBody.body.forEach(_addInstruction);
      _addInstruction(NoOpInstruction(_getTextRange(ctx)));
      endOfBlockJumpPlaceholderIndices.add(_currentInstructionTarget.length - 1);
    }
    if(ctx.elseBlock() != null) {
      final elseBody = ifBlock.branches.last;
      elseBody.body.forEach(_addInstruction);
    }
    _addInstruction(NoOpInstruction(_getTextRange(ctx)));
    final instructionList = _currentInstructionTarget;
    final jumpDestination = instructionList.length - 1;
    // do not include instruction we just added or else it will end up in a loop
    for(final index in endOfBlockJumpPlaceholderIndices) {
      instructionList[index] = JumpInstruction(_getTextRange(ctx), jumpDestination - index, virtualMachine);
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
  void enterBlock(BlockContext ctx) {
    _addInstruction(PushScopeInstruction(_getTextRange(ctx), virtualMachine.memory));
    _variableDeclarations.add({});
  }

  @override
  void exitBlock(BlockContext ctx) {
    _addInstruction(PopScopeInstruction(_getTextRange(ctx), virtualMachine.memory));
    _variableDeclarations.removeLast();
  }

  _checkTypeConversion(DataType source, DataType destination, ParserRuleContext ctx) {
    if(source == destination) {
      return;
    } else if(source == DataType.int && destination == DataType.float) {
      return;
    }
    semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: cannot assign ${source.name} to a(n) ${destination.name}.');
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
    _addInstruction(ReadInstruction(_getTextRange(ctx), virtualMachine.consoleState, destination, readType));
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
    final targetRegister = _recycleOrAllocateRegister(leftDataSource, rightDataSource, _combineNumericDataTypes(leftDataSource.dataType, rightDataSource.dataType, ctx.start!));

    if(mathOperator == MathOperator.modulo) {
      // modulo is a special case because it only works on integers
      if(leftDataSource.dataType != DataType.int || rightDataSource.dataType != DataType.int) {
        semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: modulo operator only works on integers.');
      }
    }

    _addInstruction(
        MathInstruction(
          _getTextRange(ctx),
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
    } else if(ctx.Identifier() != null) {
      return _sourceFromMemory(ctx.Identifier()!.text!, ctx.Identifier()!.symbol);
    } else if(ctx.Number() != null) {
      return _sourceFromConstant(ctx.Number()!.text!);
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
        BooleanNegationInstruction(_getTextRange(ctx), operandSource, destination)
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
            _getTextRange(ctx),
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
            _getTextRange(ctx),
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
    } else if(ctx.Identifier() != null) {
      return _sourceFromMemory(ctx.Identifier()!.text!, ctx.Identifier()!.symbol);
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
      final variableSource = _sourceFromMemory(variableName, stringToken);
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
          _getTextRange(ctx),
          function,
          dataSource,
          targetRegister,
        )
    );
    return targetRegister.toSource();
  }

  DataSource _handleStringLengthExpression(StringLengthExpressionContext ctx) {
    final identifier = ctx.Identifier()!;
    final variableName = identifier.text!;
    _checkDeclareBeforeUse(variableName, identifier.symbol);
    final lengthRegister = allocateRegister(DataType.int);
    _addInstruction(
        StringLengthInstruction(
            _getTextRange(ctx),
            _sourceFromMemory(variableName, identifier.symbol),
            lengthRegister
        )
    );
    return lengthRegister.toSource();
  }

  VariableMemorySource _sourceFromMemory(String variableName, Token startToken) {
    _checkDeclareBeforeUse(variableName, startToken);
    return VariableMemorySource(_getDeclaredType(variableName)!, virtualMachine.memory, variableName);
  }

  ConstantDataSource _sourceFromConstant(String numberText) {
    bool isInt = int.tryParse(numberText) != null;
    final value = isInt ? int.parse(numberText) : double.parse(numberText);
    return ConstantDataSource(isInt ? DataType.int : DataType.float, value);
  }

  TextRange _getTextRange(ParserRuleContext ctx) => TextRange(ctx.start!.startIndex, ctx.stop!.stopIndex);

  _checkDeclareBeforeUse(String variableName, Token startToken) {
    if(_getDeclaredType(variableName) == null) {
      semanticErrors.add(
          'Semantic error at line ${startToken.line}:${startToken.charPositionInLine}: variable name $variableName needs to be declared in the current scope before use.');
    }
  }

  _combineNumericDataTypes(DataType left, DataType right, Token startToken) {
    if(!_typeIsNumeric(left) || !_typeIsNumeric(right)) {
      semanticErrors.add('Type mismatch at ${startToken.line}:${startToken.charPositionInLine}: math operators only work on numbers.');
      throw Exception('Cannot combine non-numeric types');
    }
    if(left == DataType.float || right == DataType.float) {
      return DataType.float;
    } else {
      return DataType.int;
    }
  }

  bool _typeIsNumeric(DataType type) => type == DataType.int || type == DataType.float;

  RegisterDataDestination _recycleOrAllocateRegister(DataSource left, DataSource right, DataType dataType) {
    if(left is RegisterMemorySource) {
      return left.toDestination();
    } else if(right is RegisterMemorySource) {
      return right.toDestination();
    } else {
      return allocateRegister(dataType);
    }
  }

  DataType? _getDeclaredType(String variableName) {
    for(final scope in _variableDeclarations.reversed) {
      if(scope.containsKey(variableName)) {
        return scope[variableName];
      }
    }
    return null;
  }
}

class _IfBranch {
  final List<Instruction> body = [];
}

class _IfBlock {
  final List<_IfBranch> branches = [];
}