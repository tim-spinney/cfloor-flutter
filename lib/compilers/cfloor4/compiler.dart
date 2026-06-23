import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/generated/cfloor4/CFloor4Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor4/CFloor4Parser.dart';
import '../../compilers/syntax_error_collector.dart';
import '../../compilers/instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGenerator compileCFloor4(String sourceText, SyntaxErrorCollector errorCollector) {
  final parser = CFloor4Parser(
      CommonTokenStream(
          CFloor4Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor4TreeWalker();
  ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  return instructionGenerator;
}