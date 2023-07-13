import '../console_state.dart';
import 'data_type.dart';
import 'expression.dart';
import 'virtual_memory.dart';

enum MathOperator {
  plus,
  minus,
  times,
  divide,
  modulo
  ;
  static const bySymbol = {
    '+': MathOperator.plus,
    '-': MathOperator.minus,
    '*': MathOperator.times,
    '/': MathOperator.divide,
    '%': MathOperator.modulo,
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
        MathOperator.modulo => leftValue % rightValue,
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

class WriteExpression extends Expression {
  final ConsoleState _consoleState;
  final DataSource source;

  WriteExpression(super.textRange, this._consoleState, this.source);

  @override
  void evaluate() {
    _consoleState.addConsoleOutput(source.get().toString());
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

class ReadExpression extends Expression {
  final ConsoleState _consoleState;
  final DataDestination destination;
  final DataType dataType;

  ReadExpression(super.textRange, this._consoleState, this.destination, this.dataType);

  @override
  void evaluate() {
    _consoleState.waitForInput(dataType);
  }

  void complete(dynamic value) {
    destination.set(value);
    _consoleState.stopWaitingForInput();
  }
}

class StringConcatenationExpression extends Expression {
  final DataSource left;
  final DataSource right;
  final DataDestination destination;

  StringConcatenationExpression(super.textRange, this.left, this.right, this.destination);

  @override
  void evaluate() {
    destination.set(left.get().toString() + right.get().toString());
  }
}

class StringLengthExpression extends Expression {
  final DataSource source;
  final DataDestination destination;

  StringLengthExpression(super.textRange, this.source, this.destination);

  @override
  void evaluate() {
    destination.set(source.get().length);
  }
}