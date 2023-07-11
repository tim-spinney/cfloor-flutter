import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Parser.dart';
import '../error_collector.dart';
import '../instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGeneratingTreeWalker compileCFloor2(String sourceText, ErrorCollector errorCollector, ConsoleState consoleState) {
  final parser = CFloor2Parser(
      CommonTokenStream(
          CFloor2Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor2TreeWalker(consoleState);
  ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  return instructionGenerator;
}