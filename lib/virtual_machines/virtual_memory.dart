
class VirtualMemory {
  final Map<String, dynamic> _globalVariables = {};
  final List<List<Map<String, dynamic>>> _variableValues = [[{}]];
  final List<Map<int, dynamic>> _registers = [{}];

  List<Map<String, dynamic>> get currentScope => _variableValues.last;

  Map<int, dynamic> get registers => _registers.last;

  dynamic getVariableValue(String name) {
    final value = _getVariableValueOrNull(name);
    if(value != null) {
      return value;
    }
    throw Exception('Variable $name not found');
  }

  bool isDefined(String variableName) {
    return _getVariableValueOrNull(variableName) != null;
  }

  dynamic _getVariableValueOrNull(String name) {
    for(int i = currentScope.length - 1; i >= 0; i--) {
      if(currentScope[i].containsKey(name)) {
        return currentScope[i][name];
      }
    }
    return _globalVariables[name];
  }

  void setVariableValue(String name, dynamic value, int? index) {
    Map<String, dynamic> destinationScope = currentScope.last;
    for(int i = currentScope.length - 2; i >= 0; i--) {
      if(currentScope[i].containsKey(name)) {
        destinationScope = currentScope[i];
        break;
      }
    }
    if(index == null) {
      destinationScope[name] = value;
    } else {
      destinationScope[name][index] = value;
    }
  }

  void addGlobalVariable(String name, dynamic value) => _globalVariables[name] = value;

  void pushScope() => currentScope.add({});

  void popScope() => currentScope.removeLast();

  void pushStack() {
    _variableValues.add([{}]);
    _registers.add({});
  }

  void popStack() {
    _registers.removeLast();
    _variableValues.removeLast();
  }

  void clear() {
    _variableValues.clear();
    pushStack();
    registers.clear();
  }
}
