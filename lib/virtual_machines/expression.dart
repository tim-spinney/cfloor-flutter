import '../console_state.dart';
import 'data_type.dart';
import 'virtual_memory.dart';

class TextRange {
  final int start, end;
  TextRange(this.start, this.end);
}

abstract class Expression {
  final TextRange textRange;
  Expression(this.textRange);
  void evaluate();
}
