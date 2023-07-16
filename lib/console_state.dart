import 'package:flutter/foundation.dart';
import 'virtual_machines/data_type.dart';

class ConsoleState extends ChangeNotifier {
  final List<String> consoleOutput = [];
  DataType? _inputType;
  bool get isWaitingForInput => _inputType != null;
  DataType? get inputType => _inputType;

  void waitForInput(DataType inputType) {
    _inputType = inputType;
    notifyListeners();
  }

  void stopWaitingForInput() {
    if(_inputType != null) {
      _inputType = null;
      notifyListeners();
    }
  }

  void addConsoleOutput(String output) {
    consoleOutput.add(output);
    notifyListeners();
  }

  void clear() {
    consoleOutput.clear();
    _inputType = null;
    notifyListeners();
  }
}