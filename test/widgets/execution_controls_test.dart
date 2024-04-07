import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/virtual_machines/data_type.dart';
import 'package:cfloor_flutter/widgets/execution_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_tester_helpers.dart';


main() {
  testWidgets('shows stop icon when running', (WidgetTester tester) async {
    await tester.pumpWidgetWithMaterial(ExecutionControls(
      isRunning: true,
      interpreterState: ConsoleState(),
      toggleRunning: () {},
      advanceStep: () {},
    ));

    expect(find.byIcon(Icons.stop), findsOneWidget);
    expect(find.byIcon(Icons.play_arrow), findsNothing);
  });

  testWidgets('shows play icon when not running', (WidgetTester tester) async {
    await tester.pumpWidgetWithMaterial(ExecutionControls(
      isRunning: false,
      interpreterState: ConsoleState(),
      toggleRunning: () {},
      advanceStep: () {},
    ));

    expect(find.byIcon(Icons.stop), findsNothing);
    expect(find.byIcon(Icons.play_arrow), findsOneWidget);
  });

  testWidgets('step button is disabled when waiting for input', (WidgetTester tester) async {
    final interpreterState = ConsoleState();
    interpreterState.waitForInput(DataType.int);
    await tester.pumpWidgetWithMaterial(ExecutionControls(
      isRunning: true,
      interpreterState: interpreterState,
      toggleRunning: () {},
      advanceStep: () {},
    ));

    final stepIcon = find.byIcon(Icons.arrow_forward);
    expect(stepIcon, findsOneWidget);
    final stepButton = find.ancestor(of: stepIcon, matching: find.byType(IconButton));
    expect(stepButton, findsOneWidget);
    expect(tester.widget<IconButton>(stepButton).onPressed, isNull);
  });

  testWidgets('calls advanceStep() when the step button is pressed and is not waiting for input', (WidgetTester tester) async {
    bool wasPressed = false;
    await tester.pumpWidgetWithMaterial(ExecutionControls(
      isRunning: true,
      interpreterState: ConsoleState(),
      toggleRunning: () {},
      advanceStep: () {
        wasPressed = true;
      },
    ));

    await tester.tap(find.byIcon(Icons.arrow_forward));
    expect(wasPressed, true);
  });

}