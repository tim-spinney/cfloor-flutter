import 'package:antlr4/antlr4.dart';
import '../instruction_generating_tree_walker.dart';
import '../data_type.dart';
import '../instruction.dart';
import '../virtual_machine.dart';
import '../instructions.dart';
import '../virtual_memory.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Parser.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2BaseListener.dart';
import 'package:cfloor_flutter/console_state.dart';

class CFloor2TreeWalker extends CFloor2BaseListener implements InstructionGeneratingTreeWalker {
  int _nextRegister = 0;
  final Map<String, DataType> _variableDeclarations = {};

  @override
  final VirtualMachine virtualMachine;
  @override
  final List<String> semanticErrors = [];

  CFloor2TreeWalker(this.virtualMachine);

  @override
  void exitDeclAssignStatement(DeclAssignStatementContext ctx) {
    // record that the variable was declared and what type it has
    final variableName = ctx.assignment()!.Identifier()!.text!;
    final variableType = DataType.values.firstWhere((type) => type.name == ctx.Type()!.text);
    _variableDeclarations[variableName] = variableType;
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    // Verify that lhs was previously declared. Only necessary for assign
    // since declAssign is the declaration.
    final variableName = ctx.assignment()!.Identifier()!.text!;
    _checkDeclareBeforeUse(variableName, ctx.assignment()!);
  }

  @override
  void exitAssignment(AssignmentContext ctx) {
    // Get data source by processing rhs expression
    DataSource? dataSource;
    if(ctx.readFunctionExpression() != null) {
      dataSource = _handleReadExpression(ctx.readFunctionExpression()!);
    } else if(ctx.mathExpression() != null) {
      dataSource = _handleMathExpression(ctx.mathExpression()!);
    } // else there was a syntax error

    if(dataSource != null) {
      // validate rhs type matches lhs type
      final variableName = ctx.Identifier()!.text!;

      // get lhs type - either it was declared previously, this is part of a
      // declAssign, or we'll end up with a declare before use error anyway
      DataType? variableType = _variableDeclarations[variableName];
      if(variableType == null && ctx.parent is DeclAssignStatementContext) {
        variableType = DataType.values.firstWhere((type) => type.name == (ctx.parent as DeclAssignStatementContext).Type()!.text);
      }
      if(variableType != null) {
        _checkTypeConversion(dataSource.dataType, variableType, ctx);
      }

      virtualMachine.addInstruction(
          AssignmentInstruction(
            _getTextRange(ctx),
            VariableDataDestination(variableType ?? dataSource.dataType, virtualMachine.memory, variableName),
            dataSource,
          )
      );
    }
    // recycle any registers used by expressions
    _nextRegister = 0;
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    if(ctx.Identifier() != null || ctx.Number() != null) {
      final dataSource = ctx.Identifier() != null
          ? _sourceFromMemory(ctx.Identifier()!.text!, ctx)
          : _sourceFromConstant(ctx.Number()!.text!);
      virtualMachine.addInstruction(
        WriteInstruction(
          _getTextRange(ctx),
          virtualMachine.consoleState,
          dataSource
        )
      );
    } else if(ctx.StringLiteral() != null) {
      virtualMachine.addInstruction(WriteInstruction(_getTextRange(ctx), virtualMachine.consoleState, ConstantDataSource(DataType.string, ctx.StringLiteral()!.text!)));
    } // else there was a syntax error
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
    final readType = ctx.text.startsWith('readInt') ? DataType.int : DataType.float;
    final destination = _allocateRegister(readType);
    virtualMachine.addInstruction(ReadInstruction(_getTextRange(ctx), virtualMachine.consoleState, destination, readType));
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
    final targetRegister =
      leftDataSource is RegisterMemorySource ? leftDataSource.toDestination() :
      rightDataSource is RegisterMemorySource ? rightDataSource.toDestination() :
      _allocateRegister(_combineDataTypes(leftDataSource.dataType, rightDataSource.dataType))
    ;

    if(mathOperator == MathOperator.modulo) {
      // modulo is a special case because it only works on integers
      if(leftDataSource.dataType != DataType.int || rightDataSource.dataType != DataType.int) {
        semanticErrors.add('Type mismatch at ${ctx.start!.line}:${ctx.start!.charPositionInLine}: modulo operator only works on integers.');
      }
    }

    virtualMachine.addInstruction(
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
      return _sourceFromMemory(ctx.Identifier()!.text!, ctx);
    } else if(ctx.Number() != null) {
      return _sourceFromConstant(ctx.Number()!.text!);
    } else if(ctx.mathFunctionExpression() != null) {
      return _handleMathFunctionExpression(ctx.mathFunctionExpression()!);
    } else {
      throw Exception('Unknown math operand type');
    }
  }

  _handleMathFunctionExpression(MathFunctionExpressionContext ctx) {
    final function = MathFunction.values.firstWhere((fn) => fn.name == ctx.text.split('(')[0]);
    final dataSource = _handleMathExpression(ctx.mathExpression()!);
    final targetRegister = _allocateRegister(dataSource.dataType);
    virtualMachine.addInstruction(
      MathFunctionInstruction(
        _getTextRange(ctx),
        function,
        dataSource,
        targetRegister,
      )
    );
    return targetRegister.toSource();
  }

  VariableMemorySource _sourceFromMemory(String variableName, ParserRuleContext ctx) {
    _checkDeclareBeforeUse(variableName, ctx);
    return VariableMemorySource(_variableDeclarations[variableName]!, virtualMachine.memory, variableName);
  }

  ConstantDataSource _sourceFromConstant(String numberText) {
    bool isInt = int.tryParse(numberText) != null;
    final value = double.parse(numberText);
    return ConstantDataSource(isInt ? DataType.int : DataType.float, value);
  }

  TextRange _getTextRange(ParserRuleContext ctx) => TextRange(ctx.start!.startIndex, ctx.stop!.stopIndex);

  _checkDeclareBeforeUse(String variableName, ParserRuleContext ctx) {
    if(!_variableDeclarations.containsKey(variableName)) {
      semanticErrors.add(
          'Semantic error at line ${ctx.start!.line}:${ctx.start!.charPositionInLine}: variable name $variableName needs to be declared before use.');
    }
  }

  _combineDataTypes(DataType left, DataType right) {
    if(left == DataType.float || right == DataType.float) {
      return DataType.float;
    } else {
      return DataType.int;
    }
  }

  RegisterDataDestination _allocateRegister(DataType dataType) => RegisterDataDestination(dataType, virtualMachine.memory, _nextRegister++);
}