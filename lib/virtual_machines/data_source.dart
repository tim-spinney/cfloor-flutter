import 'package:cfloor_flutter/compilers/wrappers/data_source.dart';

import '../language_core/data_type.dart';
import 'virtual_memory.dart';

sealed class VMDataSource {
  final CompositeDataType dataType;

  VMDataSource(this.dataType);

  dynamic get();
  
  static VMDataSource fromDataSource(DataSource source, VirtualMemory virtualMemory) {
    return switch(source) {
      RegisterMemorySource(register: final register) =>
        VMRegisterMemorySource(source.dataType, virtualMemory, register),
      VariableMemorySource(variableName: final variableName) =>
        VMVariableMemorySource(source.dataType, virtualMemory, variableName),
      ConstantDataSource(value: final value) =>
        VMConstantDataSource(source.dataType, value),
    };
  }
}

abstract class VMMemorySource extends VMDataSource {
  final VirtualMemory _memory;

  VMMemorySource(super.dataType, this._memory);
}

class VMRegisterMemorySource extends VMMemorySource {
  final int _register;

  VMRegisterMemorySource(super.dataType, super._memory, this._register);

  @override
  dynamic get() => _memory.registers[_register]!;
}

class VMVariableMemorySource extends VMMemorySource {
  final String _variableName;

  VMVariableMemorySource(super.dataType, super._memory, this._variableName);

  @override
  dynamic get() => _memory.getVariableValue(_variableName);
}

class VMConstantDataSource extends VMDataSource {
  final dynamic _value;

  VMConstantDataSource(super.dataType, this._value);

  @override
  dynamic get() => _value;

  static VMConstantDataSource fromNumericConstant(String numberText) {
    final asInt = int.tryParse(numberText);
    if(asInt != null) {
      return VMConstantDataSource(DataType.int.toCompositeType(), asInt);
    }
    final asDouble = double.parse(numberText);
    return VMConstantDataSource(DataType.float.toCompositeType(), asDouble);
  }
}