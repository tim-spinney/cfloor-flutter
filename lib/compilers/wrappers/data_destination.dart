import '../../language_core/data_type.dart';
import 'data_source.dart';

sealed class DataDestination {
  final CompositeDataType dataType;

  DataDestination(this.dataType);
}

class RegisterDataDestination extends DataDestination {
  final int register;

  RegisterDataDestination(super.dataType, this.register);


  RegisterMemorySource toSource() => RegisterMemorySource(dataType, register);
}

class VariableDataDestination extends DataDestination {
  final String variableName;
  final DataSource? indexSource;

  VariableDataDestination(super.dataType, this.variableName, this.indexSource);
}