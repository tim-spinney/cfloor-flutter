import 'package:flutter/foundation.dart';
import 'language_core/data_type.dart';

class ConsoleState extends ChangeNotifier {
  final List<ConsoleMessage> consoleOutput = [];
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

  void addConsoleOutput(ConsoleMessage output) {
    consoleOutput.add(output);
    notifyListeners();
  }

  void clear() {
    consoleOutput.clear();
    _inputType = null;
    notifyListeners();
  }
}

class ConsoleMessage {
  final String message;
  final bool isError;

  const ConsoleMessage(this.message, {this.isError = false});

  @override
  String toString() => message;
}