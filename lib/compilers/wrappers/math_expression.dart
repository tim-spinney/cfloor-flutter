import '../math_operator.dart';
import '../text_interval.dart';
import 'expression.dart';
import 'math_operand.dart';

class MathExpression implements Expression {
  final TextInterval textRange;
  final MathOperand? left;
  final MathOperand? right;
  final MathOperator? operator;

  MathExpression(this.textRange, this.left, this.right, this.operator);
}