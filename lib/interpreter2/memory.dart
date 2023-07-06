
class CFloor1Memory {
  final Map<String, double> variableValues = {};
  final Map<int, double> registers = {};
}

abstract class DataSource {
  double get();
}

abstract class MemorySource extends DataSource {
  final CFloor1Memory _memory;

  MemorySource(this._memory);
}

class RegisterMemorySource extends MemorySource {
  final int _register;

  RegisterMemorySource(CFloor1Memory memorySource, this._register) : super(memorySource);

  @override
  double get() => _memory.registers[_register]!;

  RegisterDataDestination toDestination() => RegisterDataDestination(_memory, _register);
}

class VariableMemorySource extends MemorySource {
  final String _variableName;

  VariableMemorySource(CFloor1Memory memorySource, this._variableName) : super(memorySource);

  @override
  double get() => _memory.variableValues[_variableName]!;
}

class ConstantDataSource extends DataSource {
  final double _value;

  ConstantDataSource(this._value);

  @override
  double get() => _value;
}

abstract class DataDestination {
  final CFloor1Memory _memory;

  DataDestination(this._memory);

  void set(double value);
}

class RegisterDataDestination extends DataDestination {
  final int _register;

  RegisterDataDestination(CFloor1Memory memory, this._register) : super(memory);

  @override
  void set(double value) => _memory.registers[_register] = value;

  RegisterMemorySource toSource() => RegisterMemorySource(_memory, _register);
}

class VariableDataDestination extends DataDestination {
  final String _variableName;

  VariableDataDestination(CFloor1Memory memory, this._variableName) : super(memory);

  @override
  void set(double value) => _memory.variableValues[_variableName] = value;
}