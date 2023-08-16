import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/virtual_machines/virtual_machine.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor2/CFloor2Parser.dart';
import '../syntax_error_collector.dart';
import '../instruction_generating_tree_walker.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGeneratingTreeWalker compileCFloor2(String sourceText, SyntaxErrorCollector errorCollector, VirtualMachine virtualMachine) {
  final parser = CFloor2Parser(
      CommonTokenStream(
          CFloor2Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor2TreeWalker(virtualMachine);
  try {
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
  return instructionGenerator;
}