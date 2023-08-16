import '../instruction.dart';
import 'length_function_expression.dart';
import 'math_expression.dart';
import 'math_function_expression.dart';
import 'variable_accessor.dart';

class MathOperand {
  final TextRange textRange;
  final MathExpression? mathExpression;
  final VariableAccessor? variableAccessor;
  final String? numberText;
  final MathFunctionExpression? mathFunction;
  final LengthFunctionExpression? lengthFunction;

  MathOperand(
      this.textRange,
      this.mathExpression,
      this.variableAccessor,
      this.numberText,
      {
        this.mathFunction,
        this.lengthFunction,
      });
}
