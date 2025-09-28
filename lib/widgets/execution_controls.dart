import 'package:cfloor_flutter/widgets/widget_wrapper.dart';
import 'package:flutter/material.dart';
import '../console_state.dart';

class ExecutionControls extends StatelessWidget {
  final bool isRunning;
  final ConsoleState interpreterState;
  final void Function() toggleRunning;
  final void Function() advanceStep;
  final WidgetWrapper runWrapper;
  final WidgetWrapper stepWrapper;

  const ExecutionControls({
    super.key,
    required this.isRunning,
    required this.interpreterState,
    required this.toggleRunning,
    required this.advanceStep,
    WidgetWrapper? runWrapper,
    WidgetWrapper? stepWrapper
  }) : runWrapper = runWrapper ?? defaultWidgetWrapper,
       stepWrapper = stepWrapper ?? defaultWidgetWrapper;

  _makePlayButton() {
    if (isRunning) {
      return IconButton(
        onPressed: toggleRunning,
        tooltip: 'Stop',
        icon: const Icon(Icons.stop),
      );
    }
    return runWrapper(IconButton(
      onPressed: toggleRunning,
      tooltip: 'Run',
      icon: const Icon(Icons.play_arrow),
    ));
  }

  _makeStepButton() {
    return stepWrapper(
      IconButton(
        onPressed: interpreterState.isWaitingForInput ? null : advanceStep,
        tooltip: 'Step',
        icon: const Icon(Icons.arrow_forward),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      _makePlayButton(),
      if (isRunning)
        AnimatedBuilder(
          animation: interpreterState,
          builder: (context, value) => _makeStepButton(),
        )
    ]);
  }
}
