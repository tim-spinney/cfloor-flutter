import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/generated/cfloor4/CFloor4Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor4/CFloor4Parser.dart';
import '../error_collector.dart';
import '../instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGeneratingTreeWalker compileCFloor4(String sourceText, ErrorCollector errorCollector, ConsoleState consoleState) {
  final parser = CFloor4Parser(
      CommonTokenStream(
          CFloor4Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor4TreeWalker(consoleState);
  try {
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
  return instructionGenerator;
}