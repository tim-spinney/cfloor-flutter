import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor1/CFloor1Parser.dart';
import '../error_collector.dart';
import '../instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGeneratingTreeWalker compileCFloor1(String sourceText, ErrorCollector errorCollector, ConsoleState consoleState) {
  final parser = CFloor1Parser(
      CommonTokenStream(
          CFloor1Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor1TreeWalker(consoleState);
  ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  return instructionGenerator;
}