import '../math_operator.dart';
import '../text_interval.dart';
import 'math_operand.dart';

class MathExpression {
  final TextInterval textRange;
  final MathOperand? left;
  final MathOperand? right;
  final MathOperator? operator;

  MathExpression(this.textRange, this.left, this.right, this.operator);
}