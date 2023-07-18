import 'package:antlr4/antlr4.dart';
import 'virtual_machine.dart';
import 'virtual_memory.dart';
import 'data_type.dart';

abstract class InstructionGeneratingTreeWalker implements ParseTreeListener {
  final VirtualMachine virtualMachine;
  List<String> get semanticErrors;

  InstructionGeneratingTreeWalker(this.virtualMachine);
}

mixin RegisterManager {
  abstract final VirtualMachine virtualMachine;
  int nextRegister = 0;

  RegisterDataDestination allocateRegister(DataType dataType) => RegisterDataDestination(dataType, virtualMachine.memory, nextRegister++);
}