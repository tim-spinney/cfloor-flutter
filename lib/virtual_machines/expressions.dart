import '../console_state.dart';
import 'expression.dart';
import 'virtual_memory.dart';

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

enum MathFunction {
  ceil,
  floor,
  round
}

class MathFunctionExpression extends Expression {
  final MathFunction function;
  final DataSource source;
  final DataDestination destination;

  MathFunctionExpression(super.textRange, this.function, this.source, this.destination);

  @override
  void evaluate() {
    final sourceValue = source.get();
    final result = switch(function) {
      MathFunction.ceil => sourceValue.ceil(),
      MathFunction.floor => sourceValue.floor(),
      MathFunction.round => sourceValue.round(),
    };
    destination.set(result);
  }
}