import 'built_in_globals.dart';
import 'instruction_generating_tree_walker.dart';
import 'syntax_error_collector.dart';
import 'cfloor1/compiler.dart';
import 'cfloor2/compiler.dart';
import 'cfloor3/compiler.dart';
import 'cfloor4/compiler.dart';
import 'cfloor5/compiler.dart';
import 'cfloor6/compiler.dart';
import 'cfloor7/compiler.dart';
import 'language_level.dart';
import 'wrappers/instructions.dart';

const _compilersByLanguage = {
  LanguageLevel.cfloor1: compileCFloor1,
  LanguageLevel.cfloor2: compileCFloor2,
  LanguageLevel.cfloor3: compileCFloor3,
  LanguageLevel.cfloor4: compileCFloor4,
  LanguageLevel.cfloor5: compileCFloor5,
  LanguageLevel.cfloor6: compileCFloor6,
  LanguageLevel.cfloor7: compileCFloor7,
};

CompileResult compileCFloor(String sourceText, LanguageLevel languageLevel) {
  final SyntaxErrorCollector errorCollector = SyntaxErrorCollector();
  final instructionGenerator = _compilersByLanguage[languageLevel]!(sourceText, errorCollector);
  return CompileResult(
    errorCollector.errors + instructionGenerator.semanticErrorCollector.errors,
    instructionGenerator.instructions,
    instructionGenerator.builtInVariables,
    instructionGenerator is HasEntryPoint ? (instructionGenerator as HasEntryPoint).entryPoint : 0
  );
}

class CompileResult {
  final List<String> errors;
  final List<Instruction> instructions;
  final Map<String, Constant> builtInVariables;
  final int entryPoint;

  CompileResult(this.errors, this.instructions, this.builtInVariables, this.entryPoint);
}