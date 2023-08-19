import 'package:antlr4/antlr4.dart';
import 'wrappers/data_source.dart';
import 'wrappers/identifier.dart';
import 'wrappers/data_destination.dart';
import 'built_in_globals.dart';
import 'text_interval.dart';
import 'virtual_machine.dart';
import 'data_type.dart';
import 'semantic_error_collector.dart';
import 'wrappers/instructions.dart';

abstract class InstructionGeneratingTreeWalker implements ParseTreeListener {
  abstract final SemanticErrorCollector semanticErrorCollector;
  Map<String, Constant> get builtInVariables;
  List<Instruction> get topLevelInstructions;
}

class RegisterManager {
  int _nextRegister = 0;

  RegisterDataDestination allocateRegister(CompositeDataType dataType) => RegisterDataDestination(dataType, _nextRegister++);

  RegisterDataDestination recycleOrAllocateRegister(DataSource left, DataSource right, CompositeDataType dataType) {
    if(left is RegisterMemorySource) {
      return left.toDestination();
    } else if(right is RegisterMemorySource) {
      return right.toDestination();
    } else {
      return allocateRegister(dataType);
    }
  }

  void resetRegisterUsage() {
    _nextRegister = 0;
  }
}

extension ParserRuleContextTextRangeGetter on ParserRuleContext {
  TextInterval get textRange => TextInterval(start!, stop!);
}

extension TerminalNodeTextRangeGetter on TerminalNode {
  TextInterval get textRange => TextInterval(symbol, symbol);
}

mixin VariableDeclarationManager on InstructionGeneratingTreeWalker {
  final List<Map<String, CompositeDataType>> _variableDeclarations = [{}];

  void addDeclaration(String variableName, CompositeDataType dataType, TextInterval textRange) {
    if(getDeclaredType(variableName) != null) {
      semanticErrorCollector.add('Semantic error at ${textRange.startPosition}: variable "$variableName" already declared in current scope.');
    }
    _variableDeclarations.last[variableName] = dataType;
  }

  CompositeDataType? getDeclaredType(String variableName) {
    for(final scope in _variableDeclarations.reversed) {
      if(scope.containsKey(variableName)) {
        return scope[variableName];
      }
    }
    if(builtInVariables.containsKey(variableName)) {
      return CompositeDataType.fromPrimitive(builtInVariables[variableName]!.dataType);
    }
    return null;
  }

  checkDeclareBeforeUse(Identifier id) {
    if(getDeclaredType(id.variableName) == null) {
      semanticErrorCollector.add(
          'Semantic error at ${id.textRange.startPosition}: variable name ${id.variableName} needs to be declared in the current scope before use.');
    }
  }

  checkConstantAssignment(Identifier id) {
    if(builtInVariables.containsKey(id.variableName)) {
      semanticErrorCollector.add('Semantic error at ${id.textRange.startPosition}: cannot change the value of built-in variable ${id.variableName}.');
    }
  }

  void pushVariableScope() {
    _variableDeclarations.add({});
  }

  void popVariableScope() {
    _variableDeclarations.removeLast();
  }

  VariableMemorySource sourceFromMemory(Identifier id) {
    checkDeclareBeforeUse(id);
    return VariableMemorySource(getDeclaredType(id.variableName)!, id.variableName);
  }

  DataType combineNumericDataTypes(DataType left, DataType right, TextInterval textRange) {
    if(!_typeIsNumeric(left) || !_typeIsNumeric(right)) {
      semanticErrorCollector.add('Type mismatch at ${textRange.startPosition}: math operators only work on numbers.');
      throw Exception('Cannot combine non-numeric types');
    }
    if(left == DataType.float || right == DataType.float) {
      return DataType.float;
    } else {
      return DataType.int;
    }
  }

  bool _typeIsNumeric(DataType type) => type == DataType.int || type == DataType.float;

  bool checkTypeConversion(CompositeDataType source, CompositeDataType destination, TextInterval textRange) {
    if(source == destination) {
      return true;
    } else if(source.dataType == DataType.int && destination.dataType == DataType.float) {
      return true;
    }
    semanticErrorCollector.add('Type mismatch at ${textRange.startPosition}: cannot assign ${source.name} to a(n) ${destination.name}.');
    return false;
  }
}