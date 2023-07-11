import 'expression.dart';
import 'virtual_memory.dart';

class VirtualMachine {
  final VirtualMemory memory = VirtualMemory();
  final List<Expression> instructions = [];

  VirtualMachine();

  Expression getInstruction(int index) => instructions[index];
}
