import 'package:cfloor_flutter/virtual_machines/error_collector.dart';
import 'package:cfloor_flutter/virtual_machines/virtual_machine.dart';
import '../console_state.dart';
import 'cfloor1/parser.dart';
import 'cfloor2/parser.dart';
import 'language_level.dart';

class Compiler {
  final LanguageLevel languageLevel;

  Compiler(this.languageLevel);

  CompileResult compile(String sourceText, ConsoleState consoleState) {
    final ErrorCollector errorCollector = ErrorCollector();
    final instructionGenerator = switch(languageLevel) {
      LanguageLevel.cfloor1 => compileCFloor1(sourceText, errorCollector, consoleState),
      LanguageLevel.cfloor2 => compileCFloor2(sourceText, errorCollector, consoleState)
    };
    return CompileResult(errorCollector.errors + instructionGenerator.semanticErrors, instructionGenerator.virtualMachine);
  }
}

class CompileResult {
  final List<String> errors;
  final VirtualMachine virtualMachine;

  CompileResult(this.errors, this.virtualMachine);
}