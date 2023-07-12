import 'data_type.dart';

class VirtualMemory {
  final Map<String, dynamic> variableValues = {};
  final Map<int, dynamic> registers = {};
}

abstract class DataSource {
  final DataType dataType;

  DataSource(this.dataType);

  dynamic get();
}

abstract class MemorySource extends DataSource {
  final VirtualMemory _memory;

  MemorySource(super.dataType, this._memory);
}

class RegisterMemorySource extends MemorySource {
  final int _register;

  RegisterMemorySource(super.dataType, super._memory, this._register);

  @override
  dynamic get() => _memory.registers[_register]!;

  RegisterDataDestination toDestination() => RegisterDataDestination(dataType, _memory, _register);
}

class VariableMemorySource extends MemorySource {
  final String _variableName;

  VariableMemorySource(super.dataType, super._memory, this._variableName);

  @override
  dynamic get() => _memory.variableValues[_variableName]!;
}

class ConstantDataSource extends DataSource {
  final dynamic _value;

  ConstantDataSource(super.dataType, this._value);

  @override
  dynamic get() => _value;
}

abstract class DataDestination {
  final DataType dataType;
  final VirtualMemory _memory;

  DataDestination(this.dataType, this._memory);

  void set(dynamic value);
}

class RegisterDataDestination extends DataDestination {
  final int _register;

  RegisterDataDestination(super.dataType, super.memory, this._register);

  @override
  void set(dynamic value) => _memory.registers[_register] = value;

  RegisterMemorySource toSource() => RegisterMemorySource(dataType, _memory, _register);
}

class VariableDataDestination extends DataDestination {
  final String _variableName;

  VariableDataDestination(super.dataType, super._memory, this._variableName);

  @override
  void set(dynamic value) => _memory.variableValues[_variableName] = value;
}