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

class ReadExpression extends Expression {
  final ConsoleState _consoleState;
  final DataDestination destination;

  ReadExpression(super.textRange, this._consoleState, this.destination);

  @override
  void evaluate() {
    _consoleState.isWaitingForInput = true;
  }

  void complete(dynamic value) {
    destination.set(value);
    _consoleState.isWaitingForInput = false;
  }

  DataType get dataType => destination.dataType;
}
