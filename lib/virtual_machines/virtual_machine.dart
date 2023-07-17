import 'package:flutter/foundation.dart';

import '../console_state.dart';
import 'expression.dart';
import 'expressions.dart';
import 'virtual_memory.dart';

class VirtualMachine extends ChangeNotifier {
  final VirtualMemory memory = VirtualMemory();
  final List<Instruction> _instructions = [];
  final ConsoleState consoleState;
  int _instructionIndex = 0;
  bool _isRunning = false;

  VirtualMachine(this.consoleState);

  bool get isRunning => _isRunning;

  Instruction get currentInstruction => _instructions[_instructionIndex];

  int get instructionCount => _instructions.length;

  void addInstruction(Instruction instruction) {
    _instructions.add(instruction);
  }

  void advanceStep() {
    final instruction = currentInstruction;
    instruction.evaluate();
    if(!consoleState.isWaitingForInput) {
      if(instruction.shouldIncrementProgramCounter) {
        _instructionIndex++;
      }
      if(_instructionIndex == _instructions.length) {
        _isRunning = false;
      }
    }
    notifyListeners();
  }

  void jumpTo(int index) {
    _instructionIndex = index;
    notifyListeners();
  }

  void jumpBy(int offset) {
    _instructionIndex += offset;
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
    (currentInstruction as ReadInstruction).complete(value);
    _instructionIndex++;
    notifyListeners();
  }

  void clear() {
    memory.clear();
    _instructions.clear();
    consoleState.clear();
    _instructionIndex = 0;
    _isRunning = false;
    notifyListeners();
  }
}
