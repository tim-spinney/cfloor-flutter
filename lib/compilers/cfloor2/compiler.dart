import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Parser.dart';
import '../../compilers/syntax_error_collector.dart';
import '../../compilers/instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGenerator compileCFloor2(String sourceText, SyntaxErrorCollector errorCollector) {
  final parser = CFloor2Parser(
      CommonTokenStream(
          CFloor2Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor2TreeWalker();
  try {
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
  return instructionGenerator;
}