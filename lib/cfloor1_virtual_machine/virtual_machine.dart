import 'expressions.dart';
import 'memory.dart';

class VirtualMachine {
  final CFloor1Memory memory = CFloor1Memory();
  final List<Expression> instructions = [];

  VirtualMachine();

  Expression getInstruction(int index) => instructions[index];
}
