import '../instruction.dart';
import '../instructions.dart';
import 'math_operand.dart';

class MathExpression {
  final TextRange textRange;
  final MathOperand? left;
  final MathOperand? right;
  final MathOperator? operator;

  MathExpression(this.textRange, this.left, this.right, this.operator);
}