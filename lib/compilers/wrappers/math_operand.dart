import '../text_interval.dart';
import 'length_function_expression.dart';
import 'math_expression.dart';
import 'math_function_expression.dart';
import 'variable_accessor.dart';
import 'function_invocation.dart';

class MathOperand {
  final TextInterval textRange;
  final MathExpression? mathExpression;
  final VariableAccessor? variableAccessor;
  final String? numberText;
  final MathFunctionExpression? mathFunction;
  final LengthFunctionExpression? lengthFunction;
  final FunctionInvocation? functionInvocation;

  MathOperand(
      this.textRange,
      this.mathExpression,
      this.variableAccessor,
      this.numberText,
      {
        this.mathFunction,
        this.lengthFunction,
        this.functionInvocation,
      });
}
