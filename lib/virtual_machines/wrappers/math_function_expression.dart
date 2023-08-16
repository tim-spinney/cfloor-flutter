import '../instruction.dart';
import '../instructions.dart';
import 'math_expression.dart';

class MathFunctionExpression {
  TextRange textRange;
  MathFunction function;
  MathExpression? mathExpression;

  MathFunctionExpression(this.textRange, this.function, this.mathExpression);
}