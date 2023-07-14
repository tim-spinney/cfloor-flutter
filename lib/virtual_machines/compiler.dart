import '../console_state.dart';
import 'error_collector.dart';
import 'virtual_machine.dart';
import 'cfloor1/parser.dart';
import 'cfloor2/parser.dart';
import 'cfloor3/parser.dart';
import 'cfloor4/parser.dart';
import 'language_level.dart';

class Compiler {
  final LanguageLevel languageLevel;

  Compiler(this.languageLevel);

  CompileResult compile(String sourceText, ConsoleState consoleState) {
    final ErrorCollector errorCollector = ErrorCollector();
    final instructionGenerator = switch(languageLevel) {
      LanguageLevel.cfloor1 => compileCFloor1(sourceText, errorCollector, consoleState),
      LanguageLevel.cfloor2 => compileCFloor2(sourceText, errorCollector, consoleState),
      LanguageLevel.cfloor3 => compileCFloor3(sourceText, errorCollector, consoleState),
      LanguageLevel.cfloor4 => compileCFloor4(sourceText, errorCollector, consoleState),
    };
    return CompileResult(errorCollector.errors + instructionGenerator.semanticErrors, instructionGenerator.virtualMachine);
  }
}

class CompileResult {
  final List<String> errors;
  final VirtualMachine virtualMachine;

  CompileResult(this.errors, this.virtualMachine);
}