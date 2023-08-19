import '../text_interval.dart';
import '../instructions.dart';
import 'math_expression.dart';

class MathFunctionExpression {
  TextInterval textRange;
  MathFunction function;
  MathExpression? mathExpression;

  MathFunctionExpression(this.textRange, this.function, this.mathExpression);
}