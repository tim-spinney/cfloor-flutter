import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1Parser.dart';
import '../virtual_machine.dart';
import '../syntax_error_collector.dart';
import '../instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGenerator compileCFloor1(String sourceText, SyntaxErrorCollector errorCollector) {
  final parser = CFloor1Parser(
      CommonTokenStream(
          CFloor1Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor1TreeWalker();
  try {
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
  return instructionGenerator;
}