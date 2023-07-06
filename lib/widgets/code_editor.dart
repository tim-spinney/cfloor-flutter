import 'package:antlr4/antlr4.dart';
import 'package:cfloor_flutter/interpreter2/expressions.dart';
import 'package:cfloor_flutter/interpreter2/memory.dart';
import 'package:cfloor_flutter/widgets/execution_console.dart';
import 'package:cfloor_flutter/widgets/memory_view.dart';
import 'package:flutter/material.dart';

import '../generated/CFloor1Lexer.dart';
import '../generated/CFloor1Parser.dart';
import '../interpreter2/error_collector.dart';
import '../interpreter2/instruction_generating_tree_walker.dart';
import '../console_state.dart';
import 'execution_controls.dart';

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

const _sampleProgram = '''
real x = 1.0;
x = x + 2;
write(x);
''';

class _CodeEditorState extends State<CodeEditor> {
  final ConsoleState _consoleState = ConsoleState();
  final TextEditingController _sourceCodeController = TextEditingController(text: _sampleProgram);
  List<Expression>? _instructions;
  CFloor1Memory? _memory;
  bool _isRunning = false;
  int _instructionIndex = 0;
  bool _hasSyntaxErrors = false;

  @override
  void dispose() {
    super.dispose();
    _sourceCodeController.dispose();
  }

  _toggleRunning() {
    if(_isRunning) {
      setState(() {
        _isRunning = false;
      });
    } else {
      _consoleState.reset();
      final newMemory = CFloor1Memory();
      final parser = CFloor1Parser(
        CommonTokenStream(
          CFloor1Lexer(
            InputStream.fromString(_sourceCodeController.text)
          )
        )
      );
      final errorCollector = ErrorCollector();
      parser.addErrorListener(errorCollector);
      final instructionGenerator = InstructionGeneratingTreeWalker(_consoleState, newMemory);
      ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
      for (final error in errorCollector.errors) {
        _consoleState.addConsoleOutput(error);
      }
      setState(() {
        _hasSyntaxErrors = errorCollector.errors.isNotEmpty;
        _instructionIndex = 0;
        if(_hasSyntaxErrors) {
          _instructions = null;
          _memory = null;
        } else {
          _instructions = instructionGenerator.instructions;
          _memory = newMemory;
          _isRunning = true;
        }
      });
    }
  }

  _advanceStep() {
    setState(() {
      final instruction = _instructions![_instructionIndex];
      instruction.evaluate();
      if(!_consoleState.isWaitingForInput) {
        _instructionIndex++;
        if(_instructionIndex == _instructions!.length) {
          _isRunning = false;
        }
      }
    });
  }

  void _submitInput(double value) {
    (_instructions![_instructionIndex] as ReadRealExpression).complete(value);
    setState(() {
      _instructionIndex++;
    });
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
                ? ExecutionCodeView(
                  codeText: _sourceCodeController.text,
                  currentExpressionRange: _instructions![_instructionIndex].textRange,
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
              ExecutionControls(
                isRunning: _isRunning,
                interpreterState: _consoleState,
                toggleRunning: _toggleRunning,
                advanceStep: _advanceStep,
              ),
              if(_memory != null) MemoryView(memory: _memory!),
              const Divider(),
              ExecutionConsole(
                consoleState: _consoleState,
                isShowingErrors: _hasSyntaxErrors,
                submitInput: _submitInput,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ExecutionCodeView extends StatelessWidget {
  final String codeText;
  final TextRange currentExpressionRange;

  const ExecutionCodeView({super.key, required this.codeText, required this.currentExpressionRange});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children:[
          TextSpan(
              text: codeText.substring(0, currentExpressionRange.start),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              )
          ),
          TextSpan(
            text: codeText.substring(currentExpressionRange.start, currentExpressionRange.end + 1),
            style: TextStyle(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          TextSpan(
              text: codeText.substring(currentExpressionRange.end + 1),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              )
          ),
        ],
      ),
    );
  }
}
