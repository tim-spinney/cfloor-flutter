import 'package:cfloor_flutter/virtual_machines/language_level.dart';
import 'package:cfloor_flutter/widgets/widget_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';

import '../compilers/compiler.dart';
import '../console_state.dart';
import '../virtual_machines/instructions.dart';
import '../virtual_machines/virtual_machine.dart';
import 'execution_console.dart';
import 'execution_controls.dart';
import 'memory_view.dart';

class LessonProvider with ChangeNotifier {
  bool _isCurrentLessonComplete = false;

  bool get isCurrentLessonComplete => _isCurrentLessonComplete;

  completeCurrentLesson() {
    _isCurrentLessonComplete = true;
    notifyListeners();
  }
}

final _nextLessonKey = GlobalKey();

class LessonViewPage extends StatelessWidget {
  const LessonViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LessonProvider(),
      builder: (context, _) => ShowCaseWidget(
        builder: (_) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'CFloor Lesson 1',
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            actions: [
              Builder(
                builder: (context) {
                  final lessonProvider = context.watch<LessonProvider>();
                  if (lessonProvider.isCurrentLessonComplete) {
                    return Showcase(
                      key: _nextLessonKey,
                      description:
                          'You did it! Press this button to continue to the next lesson.',
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.forward),
                        tooltip: 'Next lesson',
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ],
          ),
          body: const _Lesson1View(),
        ),
      ),
    );
  }
}

class _Lesson1View extends StatefulWidget {
  const _Lesson1View({super.key});

  @override
  createState() => _Lesson1ViewState();
}

enum LessonResult {
  pending,
  success,
  failure,
}

class _Lesson1ViewState extends State<_Lesson1View> {
  final TextEditingController _sourceCodeController =
      TextEditingController(text: 'int x = 2;');
  final VirtualMachine _virtualMachine = VirtualMachine(ConsoleState());
  List<String> _compileErrors = [];
  LessonResult _lessonResult = LessonResult.pending;
  bool _hasPressedStepButton = false;

  final _introText = GlobalKey();
  final _code = GlobalKey();
  final _objectiveText = GlobalKey();
  final _run = GlobalKey();
  final _step = GlobalKey();
  final _output = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => ShowCaseWidget.of(context).startShowCase([
              _introText,
              _code,
              _objectiveText,
              _run,
              _step,
            ]));
  }

  @override
  dispose() {
    super.dispose();
    _sourceCodeController.dispose();
  }

  _toggleRunning() {
    if (_virtualMachine.isRunning) {
      _virtualMachine.stop();
      setState(() {
        _lessonResult = LessonResult.pending;
      });
    } else {
      _virtualMachine.clear();
      final compileResult =
          compileCFloor(_sourceCodeController.text, LanguageLevel.cfloor1);
      setState(() {
        _compileErrors = compileResult.errors;
        if (_compileErrors.isEmpty && compileResult.instructions.isNotEmpty) {
          compileResult.builtInVariables.forEach((name, constant) {
            _virtualMachine.memory.addGlobalVariable(name, constant.value);
          });
          for (final instruction in compileResult.instructions) {
            _virtualMachine.addInstruction(
                VMInstruction.fromInstruction(instruction, _virtualMachine));
          }
          _virtualMachine.start(compileResult.entryPoint);
        }
      });
    }
  }

  _advanceStep() {
    if (!_hasPressedStepButton) {
      setState(() {
        _hasPressedStepButton = true;
        WidgetsBinding.instance.addPostFrameCallback((_) =>
            ShowCaseWidget.of(context)
                .startShowCase([_output, _nextLessonKey]));
      });
    }
    try {
      _virtualMachine.advanceStep();
      if (_virtualMachine.isRunning &&
          _isSkippableInstruction(_virtualMachine.currentInstruction)) {
        _advanceStep();
      }
      if (!_virtualMachine.isRunning) {
        setState(() {
          _lessonResult = LessonResult.success;
        });
        context.read<LessonProvider>().completeCurrentLesson();
      }
    } catch (e) {
      _virtualMachine.stop();
      _virtualMachine.consoleState
          .addConsoleOutput(ConsoleMessage('Program crash: $e', isError: true));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _virtualMachine,
      builder: (context, _) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Showcase(
                  key: _introText,
                  description:
                      'Each lesson starts out with an explanation of what you\'ll be doing in the lesson.',
                  child: const Markdown(
                    data:
                        'In this first lesson, we\'ll learn the fundamentals of how CFloor code works.',
                    shrinkWrap: true,
                  ),
                ),
                Showcase(
                  key: _code,
                  description:
                      'Each lesson will contain one or more blocks of code. In this lesson you are not allowed to edit the code, but in future ones you will be able to modify existing code or fill in your own.',
                  child: TextField(
                    readOnly: true,
                    controller: _sourceCodeController,
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
                Showcase(
                  key: _objectiveText,
                  description:
                      'Each lesson will have one or more objectives. You can find those objectives and whether you\'ve completed them here.',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Objective: Run the code and see the result.'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          switch (_lessonResult) {
                            LessonResult.pending => Icons.pending_actions,
                            LessonResult.success => Icons.check_circle,
                            LessonResult.failure => Icons.error,
                          },
                          color: _lessonResult == LessonResult.success
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.onSurface,
                          semanticLabel: switch (_lessonResult) {
                            LessonResult.pending => 'Pending',
                            LessonResult.success => 'Success',
                            LessonResult.failure => 'Failure',
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                ExecutionControls(
                  isRunning: _virtualMachine.isRunning,
                  interpreterState: _virtualMachine.consoleState,
                  toggleRunning: _toggleRunning,
                  advanceStep: _advanceStep,
                  runWrapper: makeShowcaseWrapper(_run,
                      'Press this button to turn the code into a program and set it up to run.'),
                  stepWrapper: makeShowcaseWrapper(_step,
                      'The program only advances one step at a time. Use this button to tell it to perform the next step.'),
                ),
                Showcase(
                    key: _output,
                    description:
                        'Anything your program needs or produces while it\'s running - input prompts, variables, messages, errors - appear here.',
                    child: Column(
                      children: [
                        MemoryView(
                          memory: _virtualMachine.memory,
                          showRegisters: false,
                        ),
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
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ),
                                  ),
                                ),
                              ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const _skippableInstructionTypes = [
  VMNoOpInstruction,
  VMJumpInstruction,
  VMJumpIfFalseInstruction,
  VMPushScopeInstruction,
  VMPopScopeInstruction,
];

_isSkippableInstruction(VMInstruction i) =>
    _skippableInstructionTypes.contains(i.runtimeType);
