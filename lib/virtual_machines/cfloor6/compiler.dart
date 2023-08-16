import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/generated/cfloor6/CFloor6Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor6/CFloor6Parser.dart';
import '../syntax_error_collector.dart';
import '../instruction_generating_tree_walker.dart';
import '../virtual_machine.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGeneratingTreeWalker compileCFloor6(String sourceText, SyntaxErrorCollector errorCollector, VirtualMachine virtualMachine) {
  final parser = CFloor6Parser(
      CommonTokenStream(
          CFloor6Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  final instructionGenerator = CFloor6TreeWalker(virtualMachine);
  try {
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
  return instructionGenerator;
}