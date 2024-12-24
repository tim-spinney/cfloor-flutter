import '../virtual_machines/instructions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'execution_code_view.dart';
import 'execution_controls.dart';
import 'language_level_controls.dart';
import 'memory_view.dart';
import 'execution_console.dart';
import '../virtual_machines/virtual_machine.dart';
import '../virtual_machines/compiler.dart';
import '../virtual_machines/language_level.dart';
import '../console_state.dart';

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

const _sampleProgram = '''
int a = 4;
a = a * a;
write(a);
''';

const _skippableInstructionTypes = [
  VMNoOpInstruction,
  VMJumpInstruction,
  VMJumpIfFalseInstruction,
  VMPushScopeInstruction,
  VMPopScopeInstruction,
];

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
      final compileResult = compileCFloor(_sourceCodeController.text, _languageLevel);
      setState(() {
        _compileErrors = compileResult.errors;
        if(_compileErrors.isEmpty && compileResult.instructions.isNotEmpty) {
          compileResult.builtInVariables.forEach((name, constant) { _virtualMachine.memory.addGlobalVariable(name, constant.value); });
          for (final instruction in compileResult.instructions) {
            _virtualMachine.addInstruction(VMInstruction.fromInstruction(instruction, _virtualMachine));
          }
          _virtualMachine.start(compileResult.entryPoint);
        }
      });
    }
  }

  _advanceStep() {
    try {
      _virtualMachine.advanceStep();
      if (_virtualMachine.isRunning &&
          _isSkippableInstruction(_virtualMachine.currentInstruction)) {
        _advanceStep();
      }
    } catch(e) {
      _virtualMachine.stop();
      _virtualMachine.consoleState.addConsoleOutput(ConsoleMessage('Program crash: $e', isError: true));
    }
  }

  _isSkippableInstruction(VMInstruction i) => _skippableInstructionTypes.contains(i.runtimeType);

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
                LanguageLevelControls(languageLevel: _languageLevel, changeLanguageLevel: _changeLanguageLevel),
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
                    submitInput: _virtualMachine.submitInput,
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
