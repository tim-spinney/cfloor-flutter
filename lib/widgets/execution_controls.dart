import 'package:flutter/material.dart';
import '../console_state.dart';

class ExecutionControls extends StatelessWidget {
  final bool isRunning;
  final ConsoleState interpreterState;
  final void Function() toggleRunning;
  final void Function() advanceStep;

  const ExecutionControls({
    super.key,
    required this.isRunning,
    required this.interpreterState,
    required this.toggleRunning,
    required this.advanceStep,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: toggleRunning,
            tooltip: isRunning ? 'Stop' : 'Run',
            icon: isRunning
                ? const Icon(Icons.stop)
                : const Icon(Icons.play_arrow),
          ),

          if(isRunning) AnimatedBuilder(
            animation: interpreterState,
            builder: (context, value) => IconButton(
              onPressed: interpreterState.isWaitingForInput ? null : advanceStep,
              tooltip: 'Step',
              icon: const Icon(Icons.arrow_forward),
            ),
          )
        ]
    );
  }
}
