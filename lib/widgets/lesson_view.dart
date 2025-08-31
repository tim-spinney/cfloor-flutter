import 'package:cfloor_flutter/virtual_machines/language_level.dart';
import 'package:cfloor_flutter/widgets/execution_code_view.dart';
import 'package:cfloor_flutter/widgets/widget_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
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

enum LessonResult {
  pending,
  success,
  failure,
}

final _nextLessonKey = GlobalKey();

final _lessons = {
  1: () => const _Lesson1View(),
  2: () => const _Lesson2View(),
};

class LessonViewPage extends StatelessWidget {
  final int lessonId;
  const LessonViewPage(this.lessonId, {super.key});

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
                        onPressed: () {
                          context.go('/lessons/${lessonId + 1}');
                        },
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
          body: _lessons[lessonId]!(),
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
                  child: _virtualMachine.isRunning ? ExecutionCodeView(codeText: _sourceCodeController.text, currentExpressionRange: _virtualMachine.currentInstruction.textRange) : TextField(
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


class _Lesson2View extends StatefulWidget {
  const _Lesson2View({super.key});

  @override
  createState() => _Lesson2ViewState();
}

class _Lesson2ViewState extends State<_Lesson2View> {
  final TextEditingController _sourceCodeController =
  TextEditingController(text: '''
  int x = 2;
  int y = 4;
  int z = x + y;
  int w = x * y;
''');
  final VirtualMachine _virtualMachine = VirtualMachine(ConsoleState());
  List<String> _compileErrors = [];
  LessonResult _lessonResult = LessonResult.pending;

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
    try {
      _virtualMachine.advanceStep();
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
                const Markdown(
                  data: '''
# Lesson 2: Variables
**Variables** are used to store information in a program. Consider how you use a calculator: you type in numbers and an operator and it gives you a result. You can use the result in your next calculation, but what if you want to save it for later? This problem comes up all the time in programming, which is why variables are one of the most basic building blocks of any program.

To make a variable in CFloor, you would write something like this:
```
int x = 2;
``` 
More generally, the pattern is:
```
<what kind of thing you're storing> <the name of your variable> = <what to put in the variable>;
```
Notice that we end the line with a semicolon (`;`). Think of this like ending a sentence with a period in English.

Below are several examples of creating variables. The first two show how to store a simple (or "literal" in programming terms) value in a variable. The next two show how to use variables in calculations. For now, we'll keep things simple - all our variables will be `int`s, i.e. whole numbers.

Try running the code to see how it works!
''',
                  shrinkWrap: true,
                ),
                _virtualMachine.isRunning ? ExecutionCodeView(codeText: _sourceCodeController.text, currentExpressionRange: _virtualMachine.currentInstruction.textRange) : TextField(
                  readOnly: true,
                  controller: _sourceCodeController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ],
            ),
          ),
          const VerticalDivider(),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
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
                ExecutionControls(
                  isRunning: _virtualMachine.isRunning,
                  interpreterState: _virtualMachine.consoleState,
                  toggleRunning: _toggleRunning,
                  advanceStep: _advanceStep,
                ),
                Column(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}