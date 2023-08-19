import 'data_source.dart';
import 'data_type.dart';
import 'virtual_memory.dart';
import 'wrappers/data_destination.dart';

sealed class VMDataDestination {
  final CompositeDataType dataType;
  final VirtualMemory _memory;

  VMDataDestination(this.dataType, this._memory);

  void set(dynamic value);

  static VMDataDestination fromDataDestination(DataDestination destination, VirtualMemory virtualMemory) =>
    switch(destination) {
      RegisterDataDestination(register: final register) =>
        VMRegisterDataDestination(destination.dataType, virtualMemory, register),
      VariableDataDestination(variableName: final variableName, indexSource: final indexSource) =>
        VMVariableDataDestination(
            destination.dataType,
            virtualMemory,
            variableName,
            indexSource == null ? null : VMDataSource.fromDataSource(indexSource, virtualMemory)
        ),
    };
}

class VMRegisterDataDestination extends VMDataDestination {
  final int _register;

  VMRegisterDataDestination(super.dataType, super.memory, this._register);

  @override
  void set(dynamic value) => _memory.registers[_register] = value;
}

class VMVariableDataDestination extends VMDataDestination {
  final String _variableName;
  final VMDataSource? _indexSource;

  VMVariableDataDestination(super.dataType, super._memory, this._variableName, this._indexSource);

  @override
  void set(dynamic value) => _memory.setVariableValue(_variableName, value, _indexSource?.get());
}