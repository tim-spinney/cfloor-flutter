import '../../language_core/data_type.dart';
import 'data_destination.dart';

sealed class DataSource {
  final CompositeDataType dataType;

  DataSource(this.dataType);
}

class RegisterMemorySource extends DataSource {
  final int register;

  RegisterMemorySource(super.dataType, this.register);

  RegisterDataDestination toDestination() => RegisterDataDestination(dataType, register);
}

class VariableMemorySource extends DataSource {
  final String variableName;

  VariableMemorySource(super.dataType, this.variableName);
}

class ConstantDataSource extends DataSource {
  final dynamic value;

  ConstantDataSource(super.dataType, this.value);

  static ConstantDataSource fromNumericConstant(String numberText) {
    final asInt = int.tryParse(numberText);
    if(asInt != null) {
      return ConstantDataSource(DataType.int.toCompositeType(), asInt);
    }
    final asDouble = double.parse(numberText);
    return ConstantDataSource(DataType.float.toCompositeType(), asDouble);
  }
}