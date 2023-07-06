
import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/generated/CFloor1Parser.dart';
import 'package:cfloor_flutter/interpreter2/expressions.dart';
import 'package:cfloor_flutter/interpreter2/memory.dart';
import 'package:cfloor_flutter/console_state.dart';

import '../generated/CFloor1BaseListener.dart';

class InstructionGeneratingTreeWalker extends CFloor1BaseListener {
  final ConsoleState _consoleState;
  final List<Expression> instructions = [];
  final CFloor1Memory _memory;
  int _nextRegister = 0;

  InstructionGeneratingTreeWalker(this._consoleState, this._memory);

  TextRange _getTextRange(ParserRuleContext ctx) => TextRange(ctx.start!.startIndex, ctx.stop!.stopIndex);

  @override
  void exitAssignment(AssignmentContext ctx) {
    final variableName = ctx.Identifier()!.text!;
    DataSource? dataSource;
    if(ctx.readRealExpression() != null) {
      final destination = allocateRegister();
      final textRange = _getTextRange(ctx.readRealExpression()!);
      instructions.add(ReadRealExpression(textRange, _consoleState, destination));
      dataSource = destination.toSource();
    } else if(ctx.mathExpression() != null) {
      dataSource = _handleMathExpression(ctx.mathExpression()!);
    }
    if(dataSource != null) {
      instructions.add(
          AssignmentExpression(
            _getTextRange(ctx),
            VariableDataDestination(_memory, variableName),
            dataSource,
          )
      );
    }
    _nextRegister = 0;
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    if(ctx.Identifier() != null) {
      final variableName = ctx.Identifier()!.text!;
      instructions.add(
        NumericWriteExpression(
          _getTextRange(ctx),
          _consoleState,
          VariableMemorySource(_memory, variableName),
        )
      );
    } else if(ctx.Number() != null) {
      final value = double.parse(ctx.Number()!.text!);
      instructions.add(
        NumericWriteExpression(
          _getTextRange(ctx),
          _consoleState,
          ConstantDataSource(value),
        )
      );
    } else {
      final value = ctx.StringLiteral()!.text!;
      instructions.add(StringLiteralWriteExpression(_getTextRange(ctx), _consoleState, value));
    }
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
      allocateRegister()
    ;
    instructions.add(
      MathExpression(
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
      return VariableMemorySource(_memory, ctx.Identifier()!.text!);
    } else if(ctx.Number() != null) {
      return ConstantDataSource(double.parse(ctx.Number()!.text!));
    } else {
      throw Exception('Unknown math operand type');
    }
  }

  RegisterDataDestination allocateRegister() => RegisterDataDestination(_memory, _nextRegister++);
}