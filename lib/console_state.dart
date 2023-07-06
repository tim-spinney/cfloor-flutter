
import 'package:flutter/foundation.dart';

class ConsoleState extends ChangeNotifier {
  final List<String> consoleOutput = [];
  bool _isWaitingForInput = false;
  bool get isWaitingForInput => _isWaitingForInput;
  set isWaitingForInput(bool isWaitingForInput) {
    _isWaitingForInput = isWaitingForInput;
    notifyListeners();
  }

  void addConsoleOutput(String output) {
    consoleOutput.add(output);
    notifyListeners();
  }

  void reset() {
    consoleOutput.clear();
    _isWaitingForInput = false;
    notifyListeners();
  }
}