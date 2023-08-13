import 'data_type.dart';

class VirtualMemory {
  final Map<String, dynamic> builtInVariables = {};
  final List<Map<String, dynamic>> variableValues = [{}];
  final Map<int, dynamic> registers = {};

  getVariableValue(String name) {
    for(int i = variableValues.length - 1; i >= 0; i--) {
      if(variableValues[i].containsKey(name)) {
        return variableValues[i][name];
      }
    }
    if(builtInVariables.containsKey(name)) {
      return builtInVariables[name];
    }
    throw Exception('Variable $name not found');
  }

  setVariableValue(String name, dynamic value, int? index) {
    Map<String, dynamic> destinationScope = variableValues.last;
    for(int i = variableValues.length - 2; i >= 0; i--) {
      if(variableValues[i].containsKey(name)) {
        destinationScope = variableValues[i];
        break;
      }
    }
    if(index == null) {
      destinationScope[name] = value;
    } else {
      destinationScope[name][index] = value;
    }
  }

  addBuiltInVariable(String name, dynamic value) => builtInVariables[name] = value;

  pushScope() => variableValues.add({});

  popScope() => variableValues.removeLast();

  void clear() {
    variableValues.clear();
    variableValues.add({});
    registers.clear();
  }
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
  dynamic get() => _memory.getVariableValue(_variableName);
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
  final int? _index;

  VariableDataDestination(super.dataType, super._memory, this._variableName, { int? index }) : _index = index;

  @override
  void set(dynamic value) => _memory.setVariableValue(_variableName, value, _index);
}