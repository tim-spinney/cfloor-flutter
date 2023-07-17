import '../console_state.dart';
import 'data_type.dart';
import 'virtual_memory.dart';

class TextRange {
  final int start, end;
  TextRange(this.start, this.end);
}

abstract class Instruction {
  final TextRange textRange;
  Instruction(this.textRange);
  void evaluate();
  bool get shouldIncrementProgramCounter => true;
}
