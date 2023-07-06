import 'package:antlr4/antlr4.dart';
import 'generated/CFloor1Lexer.dart';
import 'interpreter2/memory.dart';
import 'interpreter_state.dart';
import 'widgets/code_editor.dart';
import 'package:flutter/material.dart';

import 'generated/CFloor1Parser.dart';
import 'interpreter2/instruction_generating_tree_walker.dart';

void main() {
  runApp(const MyApp());
  //final interpreter = TreeWalkingInterpreter(InterpreterState());
  const input = '''
    real x = 1.0;
    x = x + 2;
    write(x);
  ''';
  final parser = CFloor1Parser(CommonTokenStream(CFloor1Lexer(InputStream.fromString(input))));
  final instructionGenerator = InstructionGeneratingTreeWalker(InterpreterState(), CFloor1Memory());
  ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
  print(instructionGenerator.instructions);
  for (final expression in instructionGenerator.instructions) {
    expression.evaluate();
  }
  /*final walker = InteractiveTreeWalker(interpreter, parser.program());
  final nodes = walker.walkIncrementally();
  for(ParseTree node in nodes) {
    print('Node: ${node.text} ${node.sourceInterval}');
    print('Statement count: ${interpreter.statementCount}');
    print('Expression count: ${interpreter.expressionCount}');
  }*/
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CFloor Editor'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const CodeEditor(),
    );
  }
}
