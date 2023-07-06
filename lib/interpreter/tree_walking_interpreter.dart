import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:flutter/foundation.dart';
import '../generated/CFloor1BaseListener.dart';
import '../generated/CFloor1Parser.dart';

class TreeWalkingInterpreter extends CFloor1BaseListener {
  final ConsoleState _state;
  final Set<String> _types = {'real'};
  final Map<String, String> _declaredVariableTypes = {};
  final Map<String, double> _declaredVariableValues = {};

  int _statementCount = 0;
  int get statementCount => _statementCount;

  int _expressionCount = 0;
  int get expressionCount => _expressionCount;

  TreeWalkingInterpreter(this._state);

  @override
  void enterDeclAssignStatement(DeclAssignStatementContext ctx) {
    print('enterDeclAssignStatement');
    final typeSymbol = ctx.type()!.RealType()!.symbol;
    if(!_types.contains(typeSymbol.text)) {
      throw Exception('Type ${typeSymbol.text} is not supported');
    }
    final variableName = ctx.assignment()!.Identifier()!.text!;
    _declaredVariableTypes[variableName] = typeSymbol.text!;
    _statementCount++;
  }

  @override
  void exitAssignStatement(AssignStatementContext ctx) {
    print('exitAssignStatement');
    _statementCount++;
  }

  @override
  void exitAssignment(AssignmentContext ctx) {
    print('exitAssignment');
    final variableName = ctx.Identifier()!.text!;
    if(!_declaredVariableTypes.containsKey(variableName)) {
      throw Exception('Variable $variableName is not declared');
    }
    late double variableValue;
    if(ctx.mathExpression() == null) {
      // TODO: prompt user in UI for value
    } else {
      variableValue =_processMathExpression(ctx.mathExpression()!);
    }
    _declaredVariableValues[variableName] = variableValue;
    _expressionCount++;
  }

  @override
  void exitWriteStatement(WriteStatementContext ctx) {
    print('exitWriteStatement');
    final variableName = ctx.Identifier()!.text!;
    final value = _declaredVariableValues[variableName];
    _state.addConsoleOutput('$value');
    _statementCount++;
  }

  double _processMathExpression(MathExpressionContext ctx) {
    _expressionCount++;

    final left = ctx.mathOperand(0)!;
    final leftValue = _processMathOperand(left);

    final right = ctx.mathOperand(1);
    if(right == null) {
      return leftValue;
    }

    final operator =  ctx.MathOperator()!;
    final rightValue = _processMathOperand(right);
    return switch(operator.text!) {
      '+' => leftValue + rightValue,
      '-' => leftValue - rightValue,
      '*' => leftValue * rightValue,
      '/' => leftValue / rightValue,
      String() => throw Exception('Unknown operator ${operator.text}'),
    };
  }

  double _processMathOperand(MathOperandContext ctx) {
    if(ctx.Identifier() != null) {
      final variableName = ctx.Identifier()!.text!;
      final variableValue = _declaredVariableValues[variableName];
if(variableValue == null) {
        throw Exception('Variable $variableName is not declared');
      }
      return variableValue;
    }
    if(ctx.Number() != null) {
      return double.parse(ctx.Number()!.text!);
    }
    if(ctx.mathExpression() != null) {
      return _processMathExpression(ctx.mathExpression()!);
    }
    throw Exception('Unrecognized math operand ${ctx.text}');
  }
}