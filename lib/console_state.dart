import 'package:flutter/foundation.dart';
import 'virtual_machines/data_type.dart';

class ConsoleState extends ChangeNotifier {
  final List<String> consoleOutput = [];
  DataType? _inputType;
  bool get isWaitingForInput => _inputType != null;
  DataType? get inputType => _inputType;
  set isWaitingForInput(bool isWaitingForInput) {
    _inputType = DataType.float;
    notifyListeners();
  }

  void waitForInput(DataType inputType) {
    _inputType = inputType;
    notifyListeners();
  }

  void addConsoleOutput(String output) {
    consoleOutput.add(output);
    notifyListeners();
  }

  void reset() {
    consoleOutput.clear();
    _inputType = null;
    notifyListeners();
  }
}