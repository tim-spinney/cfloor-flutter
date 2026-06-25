import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/compilers/math_function.dart';
import 'package:cfloor_flutter/compilers/semantic_error_collector.dart';
import 'package:cfloor_flutter/generated/cfloor7/CFloor7Listener.dart';
import 'package:cfloor_flutter/generated/cfloor7/CFloor7Lexer.dart';
import 'package:cfloor_flutter/generated/cfloor7/CFloor7Parser.dart';
import 'package:cfloor_flutter/language_core/data_type.dart';
import 'function_collecting_tree_walker.dart';
import '../../compilers/syntax_error_collector.dart';
import '../../compilers/instruction_generating_tree_walker.dart';
import '../wrappers/function_definition.dart';
import 'instruction_generating_tree_walker.dart';

InstructionGenerator compileCFloor7(String sourceText, SyntaxErrorCollector syntaxErrorCollector) {
  final semanticErrorCollector = SemanticErrorCollector();
  final functionDefinitions = _findFunctionDefinitions(sourceText, syntaxErrorCollector, semanticErrorCollector);
  final instructionGenerator = CFloor7TreeWalker(functionDefinitions, errorCollector: semanticErrorCollector);
  _parseAndWalk(sourceText, syntaxErrorCollector, instructionGenerator);
  return instructionGenerator;
}

List<FunctionDefinition> _findFunctionDefinitions(String sourceText, SyntaxErrorCollector syntaxErrorCollector, SemanticErrorCollector semanticErrorCollector) {
  final functionCollector = FunctionCollectingTreeWalker(semanticErrorCollector, builtInFunctions: [..._builtInFunctionDefinitions]);
  _parseAndWalk(sourceText, syntaxErrorCollector, functionCollector);
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
  ParseTreeWalker.DEFAULT.walk(listener, parser.program());
}

final _floatType = CompositeDataType.fromPrimitive(DataType.float);
final _intType = CompositeDataType.fromPrimitive(DataType.int);
final _stringType = CompositeDataType.fromPrimitive(DataType.string);

final _builtInFunctionDefinitions = <FunctionDefinition>[
  FunctionDefinition(null, MathFunction.ceil.name, { 'n': _floatType }, _intType),
  FunctionDefinition(null, MathFunction.floor.name, { 'n': _floatType }, _intType),
  FunctionDefinition(null, MathFunction.round.name, { 'n': _floatType }, _intType),
  FunctionDefinition(null, MathFunction.sqrt.name, { 'n': _floatType }, _floatType),
  FunctionDefinition(null, MathFunction.sin.name, { 'n': _floatType }, _floatType),
  FunctionDefinition(null, MathFunction.cos.name, { 'n': _floatType }, _floatType),
  FunctionDefinition(null, MathFunction.tan.name, { 'n': _floatType }, _floatType),
  FunctionDefinition(null, 'length', { 's': _stringType }, _intType),
  FunctionDefinition(null, 'read_int', {}, _intType),
  FunctionDefinition(null, 'read_float', {}, _floatType),
  FunctionDefinition(null, 'read_string', {}, _stringType),
];
