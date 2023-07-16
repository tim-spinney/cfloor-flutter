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
int x = 1;
x = x + 2;
write(x);
''';

const _levelDescriptions = {
  LanguageLevel.cfloor1: 'Level 1: reading, writing, and arithmetic',
  LanguageLevel.cfloor2: 'Level 2: floats vs. ints',
  LanguageLevel.cfloor3: 'Level 3: strings',
  LanguageLevel.cfloor4: 'Level 4: booleans and conditionals',
};

class _CodeEditorState extends State<CodeEditor> {
  final TextEditingController _sourceCodeController = TextEditingController(text: _sampleProgram);
  final VirtualMachine _virtualMachine = VirtualMachine(ConsoleState());
  List<String> _compileErrors = [];
  LanguageLevel _languageLevel = LanguageLevel.cfloor1;

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
    if(_virtualMachine.isRunning) {
      _virtualMachine.stop();
    } else {
      _virtualMachine.clear();
      final compileResult = Compiler(_languageLevel).compile(_sourceCodeController.text, _virtualMachine);
      setState(() {
        _compileErrors = compileResult.errors;
        if(_compileErrors.isEmpty) {
          _virtualMachine.start();
        }
      });
    }
  }

  _advanceStep() {
    _virtualMachine.advanceStep();
  }

  void _submitInput(dynamic value) {
    _virtualMachine.submitInput(value);
  }

  Widget _buildCodeView() {
    if(_virtualMachine.isRunning) {
      return ExecutionCodeView(
        codeText: _sourceCodeController.text,
        currentExpressionRange: _virtualMachine.currentInstruction.textRange,
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
    return AnimatedBuilder(animation: _virtualMachine, builder: (context, _) =>
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                DropdownButton<LanguageLevel>(
                  items: LanguageLevel.values.map((level) => DropdownMenuItem(value: level, child: Text(_levelDescriptions[level] ?? '???'))).toList(),
                  onChanged: _virtualMachine.isRunning ? null : _changeLanguageLevel,
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
                  isRunning: _virtualMachine.isRunning,
                  interpreterState: _virtualMachine.consoleState,
                  toggleRunning: _toggleRunning,
                  advanceStep: _advanceStep,
                ),
                MemoryView(memory: _virtualMachine.memory),
                const Divider(),
                _compileErrors.isEmpty
                  ? ExecutionConsole(
                    consoleState: _virtualMachine.consoleState,
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
      )
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
