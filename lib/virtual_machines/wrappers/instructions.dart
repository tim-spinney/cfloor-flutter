import '../boolean_operator.dart';
import '../comparison_operator.dart';
import '../data_type.dart';
import '../math_function.dart';
import '../math_operator.dart';
import '../text_interval.dart';
import 'data_destination.dart';
import 'data_source.dart';

sealed class Instruction {
  final TextInterval textRange;
  Instruction(this.textRange);
}

class MathInstruction extends Instruction {
    final MathOperator operator;
    final DataSource left;
    final DataSource right;
    final DataDestination destination;

    MathInstruction(super.textRange, this.operator, this.left, this.right, this.destination);
}

class AssignmentInstruction extends Instruction {
  final DataDestination destination;
  final DataSource source;

  AssignmentInstruction(super.textRange, this.destination, this.source);
}

class WriteInstruction extends Instruction {
  final DataSource source;

  WriteInstruction(super.textRange, this.source);
}

class MathFunctionInstruction extends Instruction {
  final MathFunction function;
  final DataSource source;
  final DataDestination destination;

  MathFunctionInstruction(super.textRange, this.function, this.source, this.destination);
}

class ReadInstruction extends Instruction {
  final DataDestination destination;
  final DataType dataType;

  ReadInstruction(super.textRange, this.destination, this.dataType);
}

class StringConcatenationInstruction extends Instruction {
  final DataSource left;
  final DataSource right;
  final DataDestination destination;

  StringConcatenationInstruction(super.textRange, this.left, this.right, this.destination);
}

class StringLengthInstruction extends Instruction {
  final DataSource source;
  final DataDestination destination;

  StringLengthInstruction(super.textRange, this.source, this.destination);
}

class BooleanNegationInstruction extends Instruction {
  final DataSource source;
  final DataDestination destination;

  BooleanNegationInstruction(super.textRange, this.source, this.destination);
}

class BinaryBooleanInstruction extends Instruction {
  final BooleanOperator operator;
  final DataSource left;
  final DataSource right;
  final DataDestination destination;

  BinaryBooleanInstruction(super.textRange, this.operator, this.left, this.right, this.destination);
}

class ComparisonInstruction extends Instruction {
  final ComparisonOperator operator;
  final DataSource left;
  final DataSource right;
  final DataDestination destination;

  ComparisonInstruction(super.textRange, this.operator, this.left, this.right, this.destination);
}

class JumpInstruction extends Instruction {
  final int offset;

  JumpInstruction(super.textRange, this.offset);
}

class JumpIfFalseInstruction extends Instruction {
  final DataSource condition;
  final int offset;

  JumpIfFalseInstruction(super.textRange, this.condition, this.offset);
}

class NoOpInstruction extends Instruction {
  NoOpInstruction(super.textRange);
}

class PushScopeInstruction extends Instruction {
  PushScopeInstruction(super.textRange);
}

class PopScopeInstruction extends Instruction {
  PopScopeInstruction(super.textRange);
}

class ArrayDereferenceInstruction extends Instruction {
  final DataSource arraySource;
  final DataSource indexSource;
  final DataDestination destination;

  ArrayDereferenceInstruction(super.textRange, this.arraySource, this.indexSource, this.destination);
}