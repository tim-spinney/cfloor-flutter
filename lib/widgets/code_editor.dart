
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'execution_controls.dart';
import 'memory_view.dart';
import 'execution_console.dart';
import 'package:cfloor_flutter/virtual_machines/virtual_machine.dart';
import 'package:cfloor_flutter/virtual_machines/expression.dart';
import 'package:cfloor_flutter/virtual_machines/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/language_level.dart';
import '../console_state.dart';

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

const _sampleProgram = '''
float x = 1.0;
x = x + 2;
write(x);
''';

const _levelDescriptions = {
  LanguageLevel.cfloor1: 'Level 1: reading, writing, and arithmetic',
  LanguageLevel.cfloor2: 'Level 2: floats vs. ints',
};

class _CodeEditorState extends State<CodeEditor> {
  final ConsoleState _consoleState = ConsoleState();
  final TextEditingController _sourceCodeController = TextEditingController(text: _sampleProgram);
  VirtualMachine? _virtualMachine;
  bool _isRunning = false;
  int _instructionIndex = 0;
  List<String> _compileErrors = [];
  LanguageLevel _languageLevel = LanguageLevel.cfloor2;

  @override
  void dispose() {
    super.dispose();
    _sourceCodeController.dispose();
  }

  _changeLanguageLevel(LanguageLevel? newLevel) {
    if(newLevel != null) {
      setState(() {
        _languageLevel = newLevel;
      });
    }
  }

  _toggleRunning() {
    if(_isRunning) {
      setState(() {
        _isRunning = false;
        _consoleState.isWaitingForInput = false;
      });
    } else {
      _consoleState.reset();
      final compileResult = Compiler(_languageLevel).compile(_sourceCodeController.text, _consoleState);
      setState(() {
        _compileErrors = compileResult.errors;
        _instructionIndex = 0;
        if(_compileErrors.isEmpty) {
          _virtualMachine = compileResult.virtualMachine;
          _isRunning = true;
        } else {
          _virtualMachine = null;
        }
      });
    }
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

  void _submitInput(dynamic value) {
    (_virtualMachine!.instructions[_instructionIndex] as ReadExpression).complete(value);
    setState(() {
      _instructionIndex++;
    });
  }

  Widget _buildCodeView() {
    if(_isRunning) {
      return ExecutionCodeView(
        codeText: _sourceCodeController.text,
        currentExpressionRange: _virtualMachine!.getInstruction(
            _instructionIndex).textRange,
      );
    }
    return TextFormField(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              DropdownButton<LanguageLevel>(
                items: LanguageLevel.values.map((level) => DropdownMenuItem(value: level, child: Text(_levelDescriptions[level] ?? '???'))).toList(),
                onChanged: _isRunning ? null : _changeLanguageLevel,
                value: _languageLevel,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  child: _buildCodeView(),
                ),
              ),
            ],
          ),
        ),
        const VerticalDivider(),
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
