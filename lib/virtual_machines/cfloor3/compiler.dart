import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/generated/cfloor3/CFloor3Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor3/CFloor3Parser.dart';
import '../syntax_error_collector.dart';
import '../instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGenerator compileCFloor3(String sourceText, SyntaxErrorCollector errorCollector) {
  final parser = CFloor3Parser(
      CommonTokenStream(
          CFloor3Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor3TreeWalker();
  try {
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
  return instructionGenerator;
}