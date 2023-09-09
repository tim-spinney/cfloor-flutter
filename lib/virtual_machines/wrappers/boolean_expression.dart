import '../boolean_operator.dart';
import '../comparison_operator.dart';
import '../text_interval.dart';
import 'boolean_operand.dart';
import 'expression.dart';
import 'math_operand.dart';

class BooleanExpression implements Expression {
  final TextInterval textRange;
  final bool isNegation;
  final BooleanOperator? binaryOperator;
  final ComparisonOperator? comparator;
  final List<BooleanOperand> booleanOperands;
  final List<MathOperand> mathOperands;

  BooleanExpression(this.textRange, this.isNegation, this.binaryOperator, this.comparator, this.booleanOperands, this.mathOperands);
}