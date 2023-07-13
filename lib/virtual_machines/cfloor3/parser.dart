import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/generated/cfloor3/CFloor3Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor3/CFloor3Parser.dart';
import '../error_collector.dart';
import '../instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGeneratingTreeWalker compileCFloor3(String sourceText, ErrorCollector errorCollector, ConsoleState consoleState) {
  final parser = CFloor3Parser(
      CommonTokenStream(
          CFloor3Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor3TreeWalker(consoleState);
  try {
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
  return instructionGenerator;
}