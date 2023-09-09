import '../text_interval.dart';
import '../data_type.dart';

class FunctionDefinition {
  final TextInterval textRange;
  final String name;
  final Map<String, CompositeDataType> parameters;
  final CompositeDataType returnType;

  FunctionDefinition(this.textRange, this.name, this.parameters, this.returnType);
}