import 'package:flutter/foundation.dart';

import '../console_state.dart';
import 'expression.dart';
import 'expressions.dart';
import 'virtual_memory.dart';

class VirtualMachine extends ChangeNotifier {
  final VirtualMemory memory = VirtualMemory();
  final List<Expression> instructions = [];
  final ConsoleState consoleState;
  int _instructionIndex = 0;
  bool _isRunning = false;

  VirtualMachine(this.consoleState);

  bool get isRunning => _isRunning;

  Expression getInstruction(int index) => instructions[index];
  Expression get currentInstruction => instructions[_instructionIndex];

  void advanceStep() {
    final instruction = getInstruction(_instructionIndex);
    instruction.evaluate();
    if(!consoleState.isWaitingForInput) {
      _instructionIndex++;
      if(_instructionIndex == instructions.length) {
        _isRunning = false;
      }
    }
    notifyListeners();
  }

  void start() {
    _isRunning = true;
    _instructionIndex = 0;
    notifyListeners();
  }

  void stop() {
    _isRunning = false;
    consoleState.stopWaitingForInput();
    notifyListeners();
  }

  void submitInput(dynamic value) {
    (instructions[_instructionIndex] as ReadExpression).complete(value);
    _instructionIndex++;
    notifyListeners();
  }

  void clear() {
    memory.clear();
    instructions.clear();
    consoleState.clear();
    _instructionIndex = 0;
    _isRunning = false;
    notifyListeners();
  }
}
