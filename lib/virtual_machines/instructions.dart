import 'dart:math';

import 'package:cfloor_flutter/compilers/wrappers/instructions.dart';

import '../language_core/cfloor_array.dart';
import '../language_core/boolean_operator.dart';
import '../compilers/comparison_operator.dart';
import '../compilers/math_function.dart';
import '../compilers/math_operator.dart';
import '../console_state.dart';
import 'data_destination.dart';
import 'data_source.dart';
import '../language_core/data_type.dart';
import 'execution_exception.dart';
import '../compilers/text_interval.dart';
import 'virtual_machine.dart';
import 'virtual_memory.dart';

sealed class VMInstruction {
  final TextInterval textRange;
  VMInstruction(this.textRange);
  void evaluate();
  bool get shouldIncrementProgramCounter => true;

  static VMInstruction fromInstruction(Instruction instruction, VirtualMachine virtualMachine) =>
      switch(instruction) {
        MathInstruction() =>
            VMMathInstruction(
                instruction.textRange,
                instruction.operator,
                VMDataSource.fromDataSource(instruction.left, virtualMachine.memory),
                VMDataSource.fromDataSource(instruction.right, virtualMachine.memory),
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory)
            ),
        AssignmentInstruction() =>
            VMAssignmentInstruction(
                instruction.textRange,
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory),
                VMDataSource.fromDataSource(instruction.source, virtualMachine.memory)
            ),
        WriteInstruction() =>
            VMWriteInstruction(
                instruction.textRange,
                virtualMachine.consoleState,
                VMDataSource.fromDataSource(instruction.source, virtualMachine.memory)
            ),
        MathFunctionInstruction() =>
            VMMathFunctionInstruction(
                instruction.textRange,
                instruction.function,
                VMDataSource.fromDataSource(instruction.source, virtualMachine.memory),
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory)
            ),
        ReadInstruction() =>
            VMReadInstruction(
                instruction.textRange,
                virtualMachine.consoleState,
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory),
                instruction.dataType
            ),
        StringConcatenationInstruction() =>
            VMStringConcatenationInstruction(
                instruction.textRange,
                VMDataSource.fromDataSource(instruction.left, virtualMachine.memory),
                VMDataSource.fromDataSource(instruction.right, virtualMachine.memory),
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory)
            ),
        StringLengthInstruction() =>
            VMStringLengthInstruction(
                instruction.textRange,
                VMDataSource.fromDataSource(instruction.source, virtualMachine.memory),
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory)
            ),
        BooleanNegationInstruction() =>
            VMBooleanNegationInstruction(
                instruction.textRange,
                VMDataSource.fromDataSource(instruction.source, virtualMachine.memory),
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory)
            ),
        BinaryBooleanInstruction() =>
            VMBinaryBooleanInstruction(
                instruction.textRange,
                instruction.operator,
                VMDataSource.fromDataSource(instruction.left, virtualMachine.memory),
                VMDataSource.fromDataSource(instruction.right, virtualMachine.memory),
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory)
            ),
        ComparisonInstruction() =>
            VMComparisonInstruction(
                instruction.textRange,
                instruction.operator,
                VMDataSource.fromDataSource(instruction.left, virtualMachine.memory),
                VMDataSource.fromDataSource(instruction.right, virtualMachine.memory),
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory)
            ),
        JumpInstruction() =>
            VMJumpInstruction(
                instruction.textRange,
                instruction.offset,
                virtualMachine
            ),
        JumpIfFalseInstruction() =>
            VMJumpIfFalseInstruction(
                instruction.textRange,
                VMDataSource.fromDataSource(instruction.condition, virtualMachine.memory),
                instruction.offset,
                virtualMachine
            ),
        NoOpInstruction() =>
            VMNoOpInstruction(
                instruction.textRange
            ),
        PushScopeInstruction() =>
            VMPushScopeInstruction(
                instruction.textRange,
                virtualMachine.memory
            ),
        PopScopeInstruction() =>
            VMPopScopeInstruction(
                instruction.textRange,
                virtualMachine.memory
            ),
        ArrayDereferenceInstruction() =>
            VMArrayDereferenceInstruction(
                instruction.textRange,
                VMDataSource.fromDataSource(instruction.arraySource, virtualMachine.memory),
                VMDataSource.fromDataSource(instruction.indexSource, virtualMachine.memory),
                VMDataDestination.fromDataDestination(instruction.destination, virtualMachine.memory)
            ),
        CallInstruction() =>
            VMCallInstruction(
              instruction.textRange,
              instruction.variablesToCopy.map((e) => (
                  VMDataSource.fromDataSource(e.$1, virtualMachine.memory),
                  VMDataDestination.fromDataDestination(e.$2, virtualMachine.memory)
              )).toList(),
              virtualMachine,
              instruction.destinationInstructionIndex,
              instruction.returnValueDestination == null ? null : VMDataDestination.fromDataDestination(instruction.returnValueDestination!, virtualMachine.memory),
            ),
        ReturnInstruction() =>
            VMReturnInstruction(
              instruction.textRange,
              instruction.returnValueSource == null ? null : VMDataSource.fromDataSource(instruction.returnValueSource!, virtualMachine.memory),
              virtualMachine,
            ),
      };
}

class VMMathInstruction extends VMInstruction {
    final MathOperator operator;
    final VMDataSource left;
    final VMDataSource right;
    final VMDataDestination destination;

    VMMathInstruction(super.textRange, this.operator, this.left, this.right, this.destination);

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
      if(destination.dataType.dataType == DataType.int && result is! int) {
        result = result.toInt();
      }
      destination.set(result);
    }
}

class VMAssignmentInstruction extends VMInstruction {
  final VMDataDestination destination;
  final VMDataSource source;

  VMAssignmentInstruction(super.textRange, this.destination, this.source);

  @override
  void evaluate() {
    destination.set(source.get());
  }
}

class VMWriteInstruction extends VMInstruction {
  final ConsoleState _consoleState;
  final VMDataSource source;

  VMWriteInstruction(super.textRange, this._consoleState, this.source);

  @override
  void evaluate() {
    _consoleState.addConsoleOutput(ConsoleMessage(source.get().toString()));
  }
}

class VMMathFunctionInstruction extends VMInstruction {
  final MathFunction function;
  final VMDataSource source;
  final VMDataDestination destination;

  VMMathFunctionInstruction(super.textRange, this.function, this.source, this.destination);

  @override
  void evaluate() {
    final sourceValue = source.get();
    final result = switch(function) {
      MathFunction.ceil => sourceValue.ceil(),
      MathFunction.floor => sourceValue.floor(),
      MathFunction.round => sourceValue.round(),
      MathFunction.sqrt => sqrt(sourceValue),
      MathFunction.sin => sin(sourceValue),
      MathFunction.cos => cos(sourceValue),
      MathFunction.tan => tan(sourceValue),
    };
    destination.set(result);
  }
}

class VMReadInstruction extends VMInstruction {
  final ConsoleState _consoleState;
  final VMDataDestination destination;
  final DataType dataType;

  VMReadInstruction(super.textRange, this._consoleState, this.destination, this.dataType);

  @override
  void evaluate() {
    _consoleState.waitForInput(dataType);
  }

  void complete(dynamic value) {
    destination.set(value);
    _consoleState.stopWaitingForInput();
  }
}

class VMStringConcatenationInstruction extends VMInstruction {
  final VMDataSource left;
  final VMDataSource right;
  final VMDataDestination destination;

  VMStringConcatenationInstruction(super.textRange, this.left, this.right, this.destination);

  @override
  void evaluate() {
    destination.set(left.get().toString() + right.get().toString());
  }
}

class VMStringLengthInstruction extends VMInstruction {
  final VMDataSource source;
  final VMDataDestination destination;

  VMStringLengthInstruction(super.textRange, this.source, this.destination);

  @override
  void evaluate() {
    destination.set(source.get().length);
  }
}

class VMBooleanNegationInstruction extends VMInstruction {
  final VMDataSource source;
  final VMDataDestination destination;

  VMBooleanNegationInstruction(super.textRange, this.source, this.destination);

  @override
  void evaluate() {
    destination.set(!source.get());
  }
}

class VMBinaryBooleanInstruction extends VMInstruction {
  final BooleanOperator operator;
  final VMDataSource left;
  final VMDataSource right;
  final VMDataDestination destination;

  VMBinaryBooleanInstruction(super.textRange, this.operator, this.left, this.right, this.destination);

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

class VMComparisonInstruction extends VMInstruction {
  final ComparisonOperator operator;
  final VMDataSource left;
  final VMDataSource right;
  final VMDataDestination destination;

  VMComparisonInstruction(super.textRange, this.operator, this.left, this.right, this.destination);

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

class VMJumpInstruction extends VMInstruction {
  final int offset;
  final VirtualMachine _virtualMachine;

  VMJumpInstruction(super.textRange, this.offset, this._virtualMachine);

  @override
  void evaluate() {
    _virtualMachine.jumpBy(offset);
  }

  @override
  bool get shouldIncrementProgramCounter => false;
}

class VMJumpIfFalseInstruction extends VMInstruction {
  final VMDataSource condition;
  final int offset;
  final VirtualMachine _virtualMachine;
  @override
  late bool shouldIncrementProgramCounter;

  VMJumpIfFalseInstruction(super.textRange, this.condition, this.offset, this._virtualMachine);

  @override
  void evaluate() {
    bool conditionIsTrue = condition.get();
    if (!conditionIsTrue) {
      _virtualMachine.jumpBy(offset);
    }
    shouldIncrementProgramCounter = conditionIsTrue;
  }
}

class VMNoOpInstruction extends VMInstruction {
  VMNoOpInstruction(super.textRange);

  @override
  void evaluate() {}
}

class VMPushScopeInstruction extends VMInstruction {
  final VirtualMemory _virtualMemory;

  VMPushScopeInstruction(super.textRange, this._virtualMemory);

  @override
  void evaluate() {
    _virtualMemory.pushScope();
  }
}

class VMPopScopeInstruction extends VMInstruction {
  final VirtualMemory _virtualMemory;

  VMPopScopeInstruction(super.textRange, this._virtualMemory);

  @override
  void evaluate() {
    _virtualMemory.popScope();
  }
}

class VMArrayDereferenceInstruction extends VMInstruction {
  final VMDataSource arraySource;
  final VMDataSource indexSource;
  final VMDataDestination destination;

  VMArrayDereferenceInstruction(super.textRange, this.arraySource, this.indexSource, this.destination);

  @override
  void evaluate() {
    destination.set(arraySource.get()[indexSource.get()]);
  }
}

class VMCallInstruction extends VMInstruction {
  final List<(VMDataSource, VMDataDestination)> _variablesToCopy;
  final VirtualMachine _virtualMachine;
  final int _destinationInstructionIndex;
  final VMDataDestination? returnValueDestination;

  VMCallInstruction(super.textRange, this._variablesToCopy, this._virtualMachine, this._destinationInstructionIndex, this.returnValueDestination);

  @override
  void evaluate() {
    final valuesWithDestinations = _variablesToCopy.map((e) => (e.$1.get(), e.$2)).toList();
    _virtualMachine.memory.pushStack();
    for (final (value, destination) in valuesWithDestinations) {
      final valueCopy = value is CFloorArray ? CFloorArray.copy(value) : value;
      destination.set(valueCopy);
    }
    _virtualMachine.jumpAndSetReturn(_destinationInstructionIndex);
  }

  @override
  bool get shouldIncrementProgramCounter => false;
}

class VMReturnInstruction extends VMInstruction {
  final VMDataSource? _returnValueSource;
  final VirtualMachine _virtualMachine;

  VMReturnInstruction(super.textRange, this._returnValueSource,this._virtualMachine);

  @override
  void evaluate() {
    if (_returnValueSource == null) {
      _virtualMachine.jumpToLastReturn();
    } else {
      final returnValue = _returnValueSource!.get();
      _virtualMachine.memory.popStack();
      final valueCopy = returnValue is CFloorArray ? CFloorArray.copy(returnValue) : returnValue;
      _virtualMachine.jumpToLastReturn();
      (_virtualMachine.currentInstruction as VMCallInstruction).returnValueDestination!.set(valueCopy);
    }
  }
}