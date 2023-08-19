import 'built_in_globals.dart';
import 'syntax_error_collector.dart';
import 'virtual_machine.dart';
import 'cfloor1/compiler.dart';
import 'cfloor2/compiler.dart';
import 'cfloor3/compiler.dart';
import 'cfloor4/compiler.dart';
import 'cfloor5/compiler.dart';
import 'cfloor6/compiler.dart';
import 'language_level.dart';
import 'wrappers/instructions.dart';

class Compiler {
  final LanguageLevel languageLevel;

  Compiler(this.languageLevel);

  CompileResult compile(String sourceText) {
    final SyntaxErrorCollector errorCollector = SyntaxErrorCollector();
    final instructionGenerator = switch(languageLevel) {
      LanguageLevel.cfloor1 => compileCFloor1(sourceText, errorCollector),
      LanguageLevel.cfloor2 => compileCFloor2(sourceText, errorCollector),
      LanguageLevel.cfloor3 => compileCFloor3(sourceText, errorCollector),
      LanguageLevel.cfloor4 => compileCFloor4(sourceText, errorCollector),
      LanguageLevel.cfloor5 => compileCFloor5(sourceText, errorCollector),
      LanguageLevel.cfloor6 => compileCFloor6(sourceText, errorCollector),
    };
    return CompileResult(errorCollector.errors + instructionGenerator.semanticErrorCollector.errors, instructionGenerator.topLevelInstructions, instructionGenerator.builtInVariables);
  }
}

class CompileResult {
  final List<String> errors;
  final List<Instruction> instructions;
  final Map<String, Constant> builtInVariables;

  CompileResult(this.errors, this.instructions, this.builtInVariables);
}