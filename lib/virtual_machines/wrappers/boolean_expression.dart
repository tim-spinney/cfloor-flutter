import '../instruction.dart';
import '../instructions.dart';
import 'boolean_operand.dart';
import 'math_operand.dart';

class BooleanExpression {
  final TextRange textRange;
  final bool isNegation;
  final BooleanOperator? binaryOperator;
  final ComparisonOperator? comparator;
  final List<BooleanOperand> booleanOperands;
  final List<MathOperand> mathOperands;

  BooleanExpression(this.textRange, this.isNegation, this.binaryOperator, this.comparator, this.booleanOperands, this.mathOperands);
}