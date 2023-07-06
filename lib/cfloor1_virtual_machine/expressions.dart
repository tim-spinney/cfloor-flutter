import 'package:cfloor_flutter/console_state.dart';

import './memory.dart';

enum MathOperator {
  plus,
  minus,
  times,
  divide
  ;
  static const bySymbol = {
    '+': MathOperator.plus,
    '-': MathOperator.minus,
    '*': MathOperator.times,
    '/': MathOperator.divide,
  };
}

class TextRange {
  final int start, end;
  TextRange(this.start, this.end);
}

abstract class Expression {
  final TextRange textRange;
  Expression(this.textRange);
  void evaluate();
}

class MathExpression extends Expression {
    final MathOperator operator;
    final DataSource left;
    final DataSource right;
    final DataDestination destination;

    MathExpression(super.textRange, this.operator, this.left, this.right, this.destination);

    @override
    void evaluate() {
      final leftValue = left.get();
      final rightValue = right.get();
      final result = switch(operator) {
        MathOperator.plus => leftValue + rightValue,
        MathOperator.minus => leftValue - rightValue,
        MathOperator.times => leftValue * rightValue,
        MathOperator.divide => leftValue / rightValue,
      };
      destination.set(result);
    }
}

class AssignmentExpression extends Expression {
  final DataDestination destination;
  final DataSource source;

  AssignmentExpression(super.textRange, this.destination, this.source);

  @override
  void evaluate() {
    destination.set(source.get());
  }
}

class NumericWriteExpression extends Expression {
  final ConsoleState _consoleState;
  final DataSource source;

  NumericWriteExpression(super.textRange, this._consoleState, this.source);

  @override
  void evaluate() {
    _consoleState.addConsoleOutput(source.get().toString());
  }
}

class StringLiteralWriteExpression extends Expression {
  final ConsoleState _state;
  final String value;

  StringLiteralWriteExpression(super.textRange, this._state, this.value);

  @override
  void evaluate() {
    _state.addConsoleOutput(value);
  }
}

class ReadRealExpression extends Expression {
  final ConsoleState _consoleState;
  final DataDestination destination;

  ReadRealExpression(super.textRange, this._consoleState, this.destination);

  @override
  void evaluate() {
    _consoleState.isWaitingForInput = true;
  }

  void complete(double value) {
    destination.set(value);
    _consoleState.isWaitingForInput = false;
  }
}