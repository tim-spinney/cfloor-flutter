import 'dart:math';

import '../console_state.dart';
import 'data_type.dart';
import 'execution_exception.dart';
import 'instruction.dart';
import 'virtual_machine.dart';
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

enum BooleanOperator {
  and,
  or
  ;
  static const bySymbol = {
    'and': BooleanOperator.and,
    'or': BooleanOperator.or,
  };
}

enum ComparisonOperator {
  equal,
  notEqual,
  lessThan,
  lessThanOrEqual,
  greaterThan,
  greaterThanOrEqual
  ;
  static const bySymbol = {
    '==': ComparisonOperator.equal,
    '!=': ComparisonOperator.notEqual,
    '<': ComparisonOperator.lessThan,
    '<=': ComparisonOperator.lessThanOrEqual,
    '>': ComparisonOperator.greaterThan,
    '>=': ComparisonOperator.greaterThanOrEqual,
  };
}

class MathInstruction extends Instruction {
    final MathOperator operator;
    final DataSource left;
    final DataSource right;
    final DataDestination destination;

    MathInstruction(super.textRange, this.operator, this.left, this.right, this.destination);

    @override
    void evaluate() {
      final leftValue = left.get();
      final rightValue = right.get();
      if((operator == MathOperator.divide || operator == MathOperator.modulo) && rightValue == 0) {
        throw ExecutionException('Dividing by zero is not allowed.');
      }
      dynamic result = switch(operator) {
        MathOperator.plus => leftValue + rightValue,
        MathOperator.minus => leftValue - rightValue,
        MathOperator.times => leftValue * rightValue,
        MathOperator.divide => leftValue / rightValue,
        MathOperator.modulo => leftValue % rightValue,
      };
      if(destination.dataType == DataType.int && result is! int) {
        result = result.toInt();
      }
      destination.set(result);
    }
}

class AssignmentInstruction extends Instruction {
  final DataDestination destination;
  final DataSource source;

  AssignmentInstruction(super.textRange, this.destination, this.source);

  @override
  void evaluate() {
    destination.set(source.get());
  }
}

class WriteInstruction extends Instruction {
  final ConsoleState _consoleState;
  final DataSource source;

  WriteInstruction(super.textRange, this._consoleState, this.source);

  @override
  void evaluate() {
    _consoleState.addConsoleOutput(ConsoleMessage(source.get().toString()));
  }
}

enum MathFunction {
  ceil,
  floor,
  round,
  sqrt,
  sin,
  cos,
  tan
}

class MathFunctionInstruction extends Instruction {
  final MathFunction function;
  final DataSource source;
  final DataDestination destination;

  MathFunctionInstruction(super.textRange, this.function, this.source, this.destination);

  @override
  void evaluate() {
    final sourceValue = source.get();
    final result = switch(function) {
      MathFunction.ceil => sourceValue.ceil(),
      MathFunction.floor => sourceValue.floor(),
      MathFunction.round => sourceValue.round(),
      MathFunction.sqrt => sqrt(sourceValue.sqrt),
      MathFunction.sin => sin(sourceValue),
      MathFunction.cos => cos(sourceValue),
      MathFunction.tan => tan(sourceValue),
    };
    destination.set(result);
  }
}

class ReadInstruction extends Instruction {
  final ConsoleState _consoleState;
  final DataDestination destination;
  final DataType dataType;

  ReadInstruction(super.textRange, this._consoleState, this.destination, this.dataType);

  @override
  void evaluate() {
    _consoleState.waitForInput(dataType);
  }

  void complete(dynamic value) {
    destination.set(value);
    _consoleState.stopWaitingForInput();
  }
}

class StringConcatenationInstruction extends Instruction {
  final DataSource left;
  final DataSource right;
  final DataDestination destination;

  StringConcatenationInstruction(super.textRange, this.left, this.right, this.destination);

  @override
  void evaluate() {
    destination.set(left.get().toString() + right.get().toString());
  }
}

class StringLengthInstruction extends Instruction {
  final DataSource source;
  final DataDestination destination;

  StringLengthInstruction(super.textRange, this.source, this.destination);

  @override
  void evaluate() {
    destination.set(source.get().length);
  }
}

class BooleanNegationInstruction extends Instruction {
  final DataSource source;
  final DataDestination destination;

  BooleanNegationInstruction(super.textRange, this.source, this.destination);

  @override
  void evaluate() {
    destination.set(!source.get());
  }
}

class BinaryBooleanInstruction extends Instruction {
  final BooleanOperator operator;
  final DataSource left;
  final DataSource right;
  final DataDestination destination;

  BinaryBooleanInstruction(super.textRange, this.operator, this.left, this.right, this.destination);

  @override
  void evaluate() {
    final leftValue = left.get();
    final rightValue = right.get();
    final result = switch(operator) {
      BooleanOperator.and => leftValue && rightValue,
      BooleanOperator.or => leftValue || rightValue,
    };
    destination.set(result);
  }
}

class ComparisonInstruction extends Instruction {
  final ComparisonOperator operator;
  final DataSource left;
  final DataSource right;
  final DataDestination destination;

  ComparisonInstruction(super.textRange, this.operator, this.left, this.right, this.destination);

  @override
  void evaluate() {
    final leftValue = left.get();
    final rightValue = right.get();
    final result = switch(operator) {
      ComparisonOperator.equal => leftValue == rightValue,
      ComparisonOperator.notEqual => leftValue != rightValue,
      ComparisonOperator.lessThan => leftValue < rightValue,
      ComparisonOperator.lessThanOrEqual => leftValue <= rightValue,
      ComparisonOperator.greaterThan => leftValue > rightValue,
      ComparisonOperator.greaterThanOrEqual => leftValue >= rightValue,
    };
    destination.set(result);
  }
}

class JumpInstruction extends Instruction {
  final int offset;
  final VirtualMachine _virtualMachine;

  JumpInstruction(super.textRange, this.offset, this._virtualMachine);

  @override
  void evaluate() {
    _virtualMachine.jumpBy(offset);
  }

  @override
  bool get shouldIncrementProgramCounter => false;
}

class JumpIfFalseInstruction extends Instruction {
  final DataSource condition;
  final int offset;
  final VirtualMachine _virtualMachine;
  @override
  late final bool shouldIncrementProgramCounter;

  JumpIfFalseInstruction(super.textRange, this.condition, this.offset, this._virtualMachine);

  @override
  void evaluate() {
    bool conditionIsTrue = condition.get();
    if (!conditionIsTrue) {
      _virtualMachine.jumpBy(offset);
    }
    shouldIncrementProgramCounter = conditionIsTrue;
  }
}

class NoOpInstruction extends Instruction {
  NoOpInstruction(super.textRange);

  @override
  void evaluate() {}
}

class PushScopeInstruction extends Instruction {
  final VirtualMemory _virtualMemory;

  PushScopeInstruction(super.textRange, this._virtualMemory);

  @override
  void evaluate() {
    _virtualMemory.pushScope();
  }
}

class PopScopeInstruction extends Instruction {
  final VirtualMemory _virtualMemory;

  PopScopeInstruction(super.textRange, this._virtualMemory);

  @override
  void evaluate() {
    _virtualMemory.popScope();
  }
}