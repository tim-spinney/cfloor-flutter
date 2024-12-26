import '../text_interval.dart';
import 'boolean_expression.dart';
import 'variable_accessor.dart';

class BooleanOperand {
  final TextInterval textRange;
  final bool? literalValue;
  final VariableAccessor? variableAccessor;
  final BooleanExpression? booleanExpression;

  BooleanOperand(this.textRange, this.literalValue, this.variableAccessor, this.booleanExpression);
}