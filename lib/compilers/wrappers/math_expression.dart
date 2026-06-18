import '../math_operator.dart';
import '../text_interval.dart';
import 'expression.dart';
import 'math_operand.dart';

abstract class MathExpression implements Expression {
  final TextInterval textRange;

  MathExpression(this.textRange);
}

class MathExpressionRecursive extends MathExpression {
  final MathExpression left;
  final MathExpression right;
  final MathOperator operator;

  MathExpressionRecursive(super.textRange, this.left, this.right, this.operator);
}

class MathExpressionBaseCase extends MathExpression {
  final MathOperand operand;

  MathExpressionBaseCase(super.textRange, this.operand);
}