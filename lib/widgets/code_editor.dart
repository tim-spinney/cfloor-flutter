import 'package:flutter/material.dart';
import 'package:antlr4/antlr4.dart';
import 'package:google_fonts/google_fonts.dart';
import '../cfloor1_virtual_machine/virtual_machine.dart';
import 'execution_controls.dart';
import 'memory_view.dart';
import 'execution_console.dart';
import '../cfloor1_virtual_machine/expressions.dart';
import '../cfloor1_virtual_machine/error_collector.dart';
import '../cfloor1_virtual_machine/instruction_generating_tree_walker.dart';
import '../generated/cfloor1/CFloor1Lexer.dart';
import '../generated/cfloor1/CFloor1Parser.dart';
import '../console_state.dart';

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
  VirtualMachine? _virtualMachine;
  bool _isRunning = false;
  int _instructionIndex = 0;
  List<String> _compileErrors = [];

  @override
  void dispose() {
    super.dispose();
    _sourceCodeController.dispose();
  }

  _toggleRunning() {
    if(_isRunning) {
      setState(() {
        _isRunning = false;
        _consoleState.isWaitingForInput = false;
      });
    } else {
      _consoleState.reset();
      final errorCollector = ErrorCollector();
      final generator = _compile(errorCollector);
      setState(() {
        _compileErrors = errorCollector.errors + generator.semanticErrors;
        _instructionIndex = 0;
        if(_compileErrors.isEmpty) {
          _virtualMachine = generator.virtualMachine;
          _isRunning = true;
        } else {
          _virtualMachine = null;
        }
      });
    }
  }

  InstructionGeneratingTreeWalker _compile(ErrorCollector errorCollector) {
    final parser = CFloor1Parser(
        CommonTokenStream(
            CFloor1Lexer(
                InputStream.fromString(_sourceCodeController.text)
            )
        )
    );
    parser.addErrorListener(errorCollector);
    final instructionGenerator = InstructionGeneratingTreeWalker(_consoleState);
    ParseTreeWalker.DEFAULT.walk(instructionGenerator, parser.program());
    return instructionGenerator;
  }

  _advanceStep() {
    setState(() {
      final instruction = _virtualMachine!.getInstruction(_instructionIndex);
      instruction.evaluate();
      if(!_consoleState.isWaitingForInput) {
        _instructionIndex++;
        if(_instructionIndex == _virtualMachine!.instructions.length) {
          _isRunning = false;
        }
      }
    });
  }

  void _submitInput(double value) {
    (_virtualMachine!.instructions[_instructionIndex] as ReadRealExpression).complete(value);
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
                  currentExpressionRange: _virtualMachine!.getInstruction(_instructionIndex).textRange,
                )
                : TextFormField(
                    controller: _sourceCodeController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your code here',
                    ),
                    textAlignVertical: TextAlignVertical.top,
                    maxLines: null,
                    expands: true,
                    style: GoogleFonts.robotoMono(
                      fontSize: 14,
                    ),
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
              if(_virtualMachine != null) MemoryView(memory: _virtualMachine!.memory),
              const Divider(),
              _compileErrors.isEmpty
                ? ExecutionConsole(
                  consoleState: _consoleState,
                  submitInput: _submitInput,
                )
                : Expanded(
                  child: ListView.builder(
                    itemCount: _compileErrors.length,
                    itemBuilder: (context, index) => Text(
                      _compileErrors[index],
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                ),
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
              style: GoogleFonts.robotoMono(
                color: Theme.of(context).colorScheme.onSurface,
              )
          ),
          TextSpan(
            text: codeText.substring(currentExpressionRange.start, currentExpressionRange.end + 1),
            style: GoogleFonts.robotoMono(
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ),
          TextSpan(
              text: codeText.substring(currentExpressionRange.end + 1),
              style: GoogleFonts.robotoMono(
                color: Theme.of(context).colorScheme.onSurface,
              )
          ),
        ],
      ),
    );
  }
}
