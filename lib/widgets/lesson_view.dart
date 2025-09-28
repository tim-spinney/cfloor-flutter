import 'package:cfloor_flutter/lesson_progression_store.dart';
import 'package:collection/collection.dart';
import 'package:cfloor_flutter/virtual_machines/language_level.dart';
import 'package:cfloor_flutter/widgets/execution_code_view.dart';
import 'package:cfloor_flutter/widgets/widget_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:showcaseview/showcaseview.dart';

import '../compilers/compiler.dart';
import '../console_state.dart';
import '../lessons/lessons.dart';
import '../virtual_machines/instructions.dart';
import '../virtual_machines/virtual_machine.dart';
import 'execution_console.dart';
import 'execution_controls.dart';
import 'memory_view.dart';

class CurrentLessonStore with ChangeNotifier {
  /* This currently only exists to let the lesson view communicate to the
     lesson page that it should enable the "next lesson" button in the app bar.
     TBD whether it should store the lesson itself, completion progress, etc.
     or if that can be kept lower in the tree.
   */
  bool _isCurrentLessonComplete = false;

  bool get isCurrentLessonComplete => _isCurrentLessonComplete;

  completeCurrentLesson() {
    _isCurrentLessonComplete = true;
    notifyListeners();
  }

  advanceLesson() {
    _isCurrentLessonComplete = false;
    notifyListeners();
  }
}

enum LessonResult {
  pending,
  success,
  failure,
}

final _nextLessonKey = GlobalKey();

class LessonViewPage extends StatelessWidget {
  final int lessonId;
  const LessonViewPage(this.lessonId, {super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CurrentLessonStore(),
      builder: (context, _) => ShowCaseWidget(
        builder: (_) => Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'CFloor Lessons',
              style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            actions: [
              Builder(
                builder: (context) {
                  final lessonProvider = context.watch<CurrentLessonStore>();
                  if (lessonProvider.isCurrentLessonComplete) {
                    return Showcase(
                      key: _nextLessonKey,
                      description:
                          'You did it! Press this button to continue to the next lesson.',
                      child: IconButton(
                        onPressed: () {
                          lessonProvider.advanceLesson();
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
          body: _LessonView(allLessons[lessonId]!),
        ),
      ),
    );
  }
}

class _LessonView extends StatefulWidget {
  final Lesson lesson;
  _LessonView(this.lesson) : super(key: ValueKey('lesson_${lesson.id}'));

  @override
  createState() => _LessonViewState();
}

class _LessonViewState extends State<_LessonView> {
  final TextEditingController _sourceCodeController = TextEditingController();
  final VirtualMachine _virtualMachine = VirtualMachine(ConsoleState());
  List<String> _compileErrors = [];
  List<LessonResult> _lessonResults = [];
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
    if(widget.lesson.showTutorial) {
      WidgetsBinding.instance
          .addPostFrameCallback((_) =>
          ShowCaseWidget.of(context).startShowCase([
            _introText,
            _code,
            _objectiveText,
            _run,
            _step,
          ]));
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _sourceCodeController.text = widget.lesson.initialCode;
    _virtualMachine.clear();
    _compileErrors = [];
    _lessonResults = List.filled(widget.lesson.objectives.length, LessonResult.pending);
  }

  @override
  dispose() {
    super.dispose();
    _sourceCodeController.dispose();
  }

  _toggleRunning() {
    setState(() {
      _lessonResults = List.filled(widget.lesson.objectives.length, LessonResult.pending);
    });
    if (_virtualMachine.isRunning) {
      _virtualMachine.stop();
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
    if (widget.lesson.showTutorial && !_hasPressedStepButton) {
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
          for(final (index, objective) in widget.lesson.objectives.indexed) {
            try {
              bool passed = objective.validator(_virtualMachine);
              _lessonResults[index] =
              passed ? LessonResult.success : LessonResult.failure;
            } catch (e) {
              _lessonResults[index] = LessonResult.failure;
            }
          }
          if(_lessonResults.every((result) => result == LessonResult.success)) {
            context.read<CurrentLessonStore>().completeCurrentLesson();
            context.read<LessonProgressionStore>().markComplete(widget.lesson.id);
          }
        });
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _maybeShowcase(
                  key: _introText,
                  description:
                      'Each lesson starts out with an explanation of what you\'ll be doing in the lesson.',
                  child: Markdown(
                    data: widget.lesson.explanation,
                    shrinkWrap: true,
                  ),
                ),
                _maybeShowcase(
                  key: _code,
                  description:
                      'Each lesson will contain one or more blocks of code. In this lesson you are not allowed to edit the code, but in future ones you will be able to modify existing code or fill in your own.',
                  child: _virtualMachine.isRunning
                      ? ExecutionCodeView(
                      codeText: _sourceCodeController.text,
                      currentExpressionRange: _virtualMachine.currentInstruction.textRange
                  )
                      : TextField(
                    readOnly: !widget.lesson.isEditable,
                    controller: _sourceCodeController,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    style: GoogleFonts.robotoMono(),
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
                _maybeShowcase(
                  key: _objectiveText,
                  description:
                      'Each lesson will have one or more objectives. You can find those objectives and whether you\'ve completed them here.',
                  child: Column(
                    children: widget.lesson.objectives.mapIndexed((index, objective) =>
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(objective.description),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: _makeResultIcon(_lessonResults[index]),
                          ),
                        ],
                      ),
                    ).toList(),
                  ),
                ),
                ExecutionControls(
                  isRunning: _virtualMachine.isRunning,
                  interpreterState: _virtualMachine.consoleState,
                  toggleRunning: _toggleRunning,
                  advanceStep: _advanceStep,
                  runWrapper: widget.lesson.showTutorial ? makeShowcaseWrapper(_run,
                      'Press this button to turn the code into a program and set it up to run.') : null,
                  stepWrapper: widget.lesson.showTutorial ? makeShowcaseWrapper(_step,
                      'The program only advances one step at a time. Use this button to tell it to perform the next step.') : null,
                ),
                _maybeShowcase(
                    key: _output,
                    description:
                        'Anything your program needs or produces while it\'s running - input prompts, variables, messages, errors - appear here.',
                    child: MemoryView(
                          memory: _virtualMachine.memory,
                          showRegisters: false,
                        ),
                ),
                const Divider(),
                Expanded(child: _compileErrors.isEmpty
                  ? ExecutionConsole(
                      consoleState: _virtualMachine.consoleState,
                      submitInput: _virtualMachine.submitInput,
                    )
                  : ListView.builder(
                      shrinkWrap: true,
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
      ),
    );
  }

  Widget _maybeShowcase({required GlobalKey key, required String description, required Widget child}) {
    if(widget.lesson.showTutorial) {
      return Showcase(
        key: key,
        description: description,
        child: child,
      );
    } else {
      return child;
    }
  }

  Icon _makeResultIcon(LessonResult result) {
    return Icon(
      switch (result) {
        LessonResult.pending => Icons.pending_actions,
        LessonResult.success => Icons.check_circle,
        LessonResult.failure => Icons.error,
      },
      color: switch(result) {
        LessonResult.pending => Theme.of(context).colorScheme.onSurface,
        LessonResult.success => Theme.of(context).colorScheme.primary,
        LessonResult.failure => Theme.of(context).colorScheme.error,
      },
      semanticLabel: switch (result) {
        LessonResult.pending => 'Pending',
        LessonResult.success => 'Success',
        LessonResult.failure => 'Failure',
      },
    );
  }
}
