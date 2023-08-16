import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/virtual_machines/semantic_error_collector.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/identifier.dart';
import 'built_in_globals.dart';
import 'instruction.dart';
import 'virtual_machine.dart';
import 'virtual_memory.dart';
import 'data_type.dart';

abstract class InstructionGeneratingTreeWalker implements ParseTreeListener {
  abstract final VirtualMachine virtualMachine;
  abstract final SemanticErrorCollector semanticErrorCollector;
  Map<String, Constant> get builtInVariables;
}

class RegisterManager {
  final VirtualMemory _virtualMemory;
  int _nextRegister = 0;

  RegisterManager(this._virtualMemory);

  RegisterDataDestination allocateRegister(CompositeDataType dataType) => RegisterDataDestination(dataType, _virtualMemory, _nextRegister++);

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
  TextRange get textRange => TextRange(start!, stop!);
}

extension TerminalNodeTextRangeGetter on TerminalNode {
  TextRange get textRange => TextRange(symbol, symbol);
}

mixin VariableDeclarationManager on InstructionGeneratingTreeWalker {

  final List<Map<String, CompositeDataType>> _variableDeclarations = [{}];

  void addDeclaration(String variableName, CompositeDataType dataType, TextRange textRange) {
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
    return VariableMemorySource(getDeclaredType(id.variableName)!, virtualMachine.memory, id.variableName);
  }

  DataType combineNumericDataTypes(DataType left, DataType right, TextRange textRange) {
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

  bool checkTypeConversion(CompositeDataType source, CompositeDataType destination, TextRange textRange) {
    if(source == destination) {
      return true;
    } else if(source.dataType == DataType.int && destination.dataType == DataType.float) {
      return true;
    }
    semanticErrorCollector.add('Type mismatch at ${textRange.startPosition}: cannot assign ${source.name} to a(n) ${destination.name}.');
    return false;
  }
}