import 'data_type.dart';

class VirtualMemory {
  final Map<String, dynamic> builtInVariables = {};
  final List<Map<String, dynamic>> variableValues = [{}];
  final Map<int, dynamic> registers = {};

  getVariableValue(String name) {
    for(int i = variableValues.length - 1; i >= 0; i--) {
      if(variableValues[i].containsKey(name)) {
        return variableValues[i][name];
      }
    }
    if(builtInVariables.containsKey(name)) {
      return builtInVariables[name];
    }
    throw Exception('Variable $name not found');
  }

  setVariableValue(String name, dynamic value, int? index) {
    Map<String, dynamic> destinationScope = variableValues.last;
    for(int i = variableValues.length - 2; i >= 0; i--) {
      if(variableValues[i].containsKey(name)) {
        destinationScope = variableValues[i];
        break;
      }
    }
    if(index == null) {
      destinationScope[name] = value;
    } else {
      destinationScope[name][index] = value;
    }
  }

  addBuiltInVariable(String name, dynamic value) => builtInVariables[name] = value;

  pushScope() => variableValues.add({});

  popScope() => variableValues.removeLast();

  void clear() {
    variableValues.clear();
    variableValues.add({});
    registers.clear();
  }
}
