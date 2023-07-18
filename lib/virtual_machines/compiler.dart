import '../console_state.dart';
import 'error_collector.dart';
import 'virtual_machine.dart';
import 'cfloor1/compiler.dart';
import 'cfloor2/compiler.dart';
import 'cfloor3/compiler.dart';
import 'cfloor4/compiler.dart';
import 'language_level.dart';

class Compiler {
  final LanguageLevel languageLevel;

  Compiler(this.languageLevel);

  CompileResult compile(String sourceText, VirtualMachine virtualMachine) {
    final ErrorCollector errorCollector = ErrorCollector();
    final instructionGenerator = switch(languageLevel) {
      LanguageLevel.cfloor1 => compileCFloor1(sourceText, errorCollector, virtualMachine),
      LanguageLevel.cfloor2 => compileCFloor2(sourceText, errorCollector, virtualMachine),
      LanguageLevel.cfloor3 => compileCFloor3(sourceText, errorCollector, virtualMachine),
      LanguageLevel.cfloor4 => compileCFloor4(sourceText, errorCollector, virtualMachine),
    };
    return CompileResult(errorCollector.errors + instructionGenerator.semanticErrors, instructionGenerator.virtualMachine);
  }
}

class CompileResult {
  final List<String> errors;
  final VirtualMachine virtualMachine;

  CompileResult(this.errors, this.virtualMachine);
}