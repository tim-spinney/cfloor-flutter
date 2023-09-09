import 'expression.dart';
import 'variable_accessor.dart';
import '../text_interval.dart';

class FunctionInvocation implements Expression {
  final TextInterval textRange;
  final String functionName;
  final List<VariableAccessor> arguments;

  FunctionInvocation(this.textRange, this.functionName, this.arguments);
}