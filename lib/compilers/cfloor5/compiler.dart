import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/generated/cfloor5/CFloor5Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor5/CFloor5Parser.dart';
import '../../compilers/syntax_error_collector.dart';
import '../../compilers/instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGenerator compileCFloor5(String sourceText, SyntaxErrorCollector errorCollector) {
  final parser = CFloor5Parser(
      CommonTokenStream(
          CFloor5Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor5TreeWalker();
  try {
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
  return instructionGenerator;
}