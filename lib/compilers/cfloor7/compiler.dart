import 'package:antlr4/antlr4.dart';
import 'package:flutter/foundation.dart';
import 'package:cfloor_flutter/generated/cfloor7/CFloor7Listener.dart';
import 'package:cfloor_flutter/generated/cfloor7/CFloor7Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor7/CFloor7Parser.dart';
import 'function_collecting_tree_walker.dart';
import '../../compilers/syntax_error_collector.dart';
import '../../compilers/instruction_generating_tree_walker.dart';
import '../wrappers/function_definition.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGenerator compileCFloor7(String sourceText, SyntaxErrorCollector errorCollector) {
  final functionDefinitions = _findFunctionDefinitions(sourceText, errorCollector);
  final instructionGenerator = CFloor7TreeWalker(functionDefinitions);
  _parseAndWalk(sourceText, errorCollector, instructionGenerator);
  return instructionGenerator;
}

List<FunctionDefinition> _findFunctionDefinitions(String sourceText, SyntaxErrorCollector errorCollector) {
  final functionCollector = FunctionCollectingTreeWalker();
  _parseAndWalk(sourceText, errorCollector, functionCollector);
  return functionCollector.functions;
}

void _parseAndWalk(String sourceText, SyntaxErrorCollector errorCollector, CFloor7Listener listener) {
  final parser = CFloor7Parser(
      CommonTokenStream(
          CFloor7Lexer(
              InputStream.fromString(sourceText)
          )
      )
  );
  parser.addErrorListener(errorCollector);
  try {
    ParseTreeWalker.DEFAULT.walk(listener, parser.program());
  } catch(e) {
    if(kDebugMode) {
      print('Unhandled error while walking parse tree: $e');
    }
  }
}