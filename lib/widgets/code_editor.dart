

import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/interpreter2/expressions.dart';
import 'package:cfloor_flutter/interpreter2/memory.dart';
import 'package:cfloor_flutter/widgets/memory_view.dart';
import 'package:flutter/material.dart';

import '../generated/CFloor1Lexer.dart';
import '../generated/CFloor1Parser.dart';
import '../interpreter2/error_collector.dart';
import '../interpreter2/instruction_generating_tree_walker.dart';
import '../interpreter_state.dart';

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  final InterpreterState _interpreterState = InterpreterState();
  final TextEditingController _sourceCodeController = TextEditingController(text: '''
real x = 1.0;
x = x + 2;
write(x);''');
  final TextEditingController _inputController = TextEditingController();
  final _inputFormKey = GlobalKey<FormState>();
  List<Expression>? _instructions;
  CFloor1Memory? _memory;
  bool _isRunning = false;
  int _instructionIndex = 0;
  bool _hasSyntaxErrors = false;

  @override
  void dispose() {
    super.dispose();
    _sourceCodeController.dispose();
    _inputController.dispose();
  }

  _onRunPressed() {
    if(_isRunning) {
      setState(() {
        _isRunning = false;
      });
    } else {
      _reset();
      final newMemory = CFloor1Memory();
      final parser = CFloor1Parser(CommonTokenStream(
          CFloor1Lexer(InputStream.fromString(_sourceCodeController.text))));
      final errorCollector = ErrorCollector();
      parser.addErrorListener(errorCollector);
      final instructionGenerator = InstructionGeneratingTreeWalker(_interpreterState, newMemory);
      ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
      for (final error in errorCollector.errors) {
        _interpreterState.addConsoleOutput(error);
      }
      setState(() {
        _hasSyntaxErrors = errorCollector.errors.isNotEmpty;
        if(!_hasSyntaxErrors) {
          _memory = newMemory;
          _instructions = instructionGenerator.instructions;
          _isRunning = true;
        }
      });
    }
  }

  _onStep() {
    setState(() {
      final instruction = _instructions![_instructionIndex];
      instruction.evaluate();
      if(!_interpreterState.isWaitingForInput) {
        _instructionIndex++;
        if(_instructionIndex == _instructions!.length) {
          _isRunning = false;
        }
      }
    });
  }

  _reset() {
    setState(() {
      _interpreterState.reset();
      _isRunning = false;
      _instructions = null;
      _memory = null;
      _instructionIndex = 0;
    });
  }

  List<TextSpan> _splitTextAroundCurrentExpression() {
    final currentTextRange = _instructions![_instructionIndex].textRange;
    final fullText = _sourceCodeController.text;
    return [
      TextSpan(
        text: fullText.substring(0, currentTextRange.start),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        )
      ),
      TextSpan(
        text: fullText.substring(currentTextRange.start, currentTextRange.end + 1),
        style: TextStyle(
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
      ),
      TextSpan(
        text: fullText.substring(currentTextRange.end + 1),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        )
      ),
    ];
  }

  _onInputSubmitted() {
    if(_inputFormKey.currentState!.validate()) {
      final value = double.parse(_inputController.text);
      (_instructions![_instructionIndex] as ReadRealExpression).complete(value);
      _inputController.clear();
      setState(() {
        _instructionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Theme.of(context).colorScheme.onSurface,
                  width: 1,
                ),
              ),
            ),
            child: _isRunning
                ? RichText(
                  text: TextSpan(
                    children: _splitTextAroundCurrentExpression(),
                  ),
                )
                : TextFormField(
                    controller: _sourceCodeController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your code here',
                    ),
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: null,
                    expands: true,
                  ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: _onRunPressed,
                    tooltip: _isRunning ? 'Stop' : 'Run',
                    icon: _isRunning
                        ? const Icon(Icons.stop)
                        : const Icon(Icons.play_arrow),
                  ),

                  if(_isRunning) AnimatedBuilder(
                    animation: _interpreterState,
                    builder: (context, value) => IconButton(
                      onPressed: _interpreterState.isWaitingForInput ? null : _onStep,
                      tooltip: 'Step',
                      icon: const Icon(Icons.arrow_forward),
                    ),
                  )
                ]
              ),
              if(_memory != null) MemoryView(memory: _memory!),
              const Divider(),
              AnimatedBuilder(
                animation: _interpreterState,
                builder: (context, value) => Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: _interpreterState.consoleOutput.length,
                      itemBuilder: (context, index) => Text(
                        _interpreterState.consoleOutput[index],
                        style: _hasSyntaxErrors
                            ? const TextStyle(color: Colors.red)
                            : null,
                      ),
                    ),
                    if(_interpreterState.isWaitingForInput) Form(
                      key: _inputFormKey,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 256,
                            child: TextFormField(
                              expands: false,
                              controller: _inputController,
                              decoration: const InputDecoration(
                                hintText: 'Enter a number here',
                              ),
                              validator: (value) {
                                if(value == null || value.isEmpty) {
                                  return 'Please enter a number';
                                }
                                if(double.tryParse(value) == null) {
                                  return 'Please enter a valid number';
                                }
                                return null;
                              },
                            ),
                          ),
                          ElevatedButton(
                            onPressed: _onInputSubmitted,
                            child: const Text('Submit'),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
