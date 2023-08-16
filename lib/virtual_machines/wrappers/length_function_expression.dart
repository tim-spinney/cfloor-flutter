import '../instruction.dart';
import 'variable_accessor.dart';

class LengthFunctionExpression {
  TextRange textRange;
  VariableAccessor variableAccessor;

  LengthFunctionExpression(this.textRange, this.variableAccessor);
}