import '../math_function.dart';
import '../text_interval.dart';
import 'expression.dart';
import 'math_expression.dart';

class MathFunctionExpression implements Expression {
  TextInterval textRange;
  MathFunction function;
  MathExpression? mathExpression;

  MathFunctionExpression(this.textRange, this.function, this.mathExpression);
}