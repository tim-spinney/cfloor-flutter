import '../text_interval.dart';
import 'variable_accessor.dart';

class LengthFunctionExpression {
  TextInterval textRange;
  VariableAccessor variableAccessor;

  LengthFunctionExpression(this.textRange, this.variableAccessor);
}