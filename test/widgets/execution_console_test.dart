import 'package:cfloor_flutter/virtual_machines/data_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/widgets/execution_console.dart';
import 'widget_tester_helpers.dart';

main() {
  testWidgets('Shows no text when there is no console output', (WidgetTester tester) async {
    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: ConsoleState(), submitInput: (_) {}));

    expect(find.byType(Text), findsNothing);
  });

  testWidgets('Shows console output when there is console output', (WidgetTester tester) async {
    final consoleState = ConsoleState();
    const messages = [
      'Hi',
      'mom'
    ];
    for(final message in messages) {
      consoleState.addConsoleOutput(ConsoleMessage(message));
    }

    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: consoleState, submitInput: (_) {}));

    for(final message in messages) {
      expect(find.text(message), findsOneWidget);
    }
  });

  testWidgets('Uses different colors for error and normal messages', (WidgetTester tester) async {
    final consoleState = ConsoleState();
    const messages = [
      ConsoleMessage('Good'),
      ConsoleMessage('Bad', isError: true)
    ];
    for(final message in messages) {
      consoleState.addConsoleOutput(message);
    }

    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: consoleState, submitInput: (_) {}));

    final normalText = tester.widget<Text>(find.text('Good'));
    final errorText = tester.widget<Text>(find.text('Bad'));

    expect(normalText.style!.color, isNot(errorText.style!.color));
  });

  testWidgets('Hides input form when not waiting for input', (WidgetTester tester) async {
    final consoleState = ConsoleState();
    consoleState.stopWaitingForInput();

    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: consoleState, submitInput: (_) {}));

    expect(find.byType(TextFormField), findsNothing);
  });

  testWidgets('Shows input form when waiting for input', (WidgetTester tester) async {
    final consoleState = ConsoleState();
    consoleState.waitForInput(DataType.int);

    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: consoleState, submitInput: (_) {}));

    expect(find.byType(TextFormField), findsOneWidget);
  });

  testWidgets('Rejects non-double strings when waiting for a double', (WidgetTester tester) async {
    final consoleState = ConsoleState();
    consoleState.waitForInput(DataType.float);
    var wasCalled = false;

    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: consoleState, submitInput: (_) { wasCalled = true; }));

    await tester.enterText(find.byType(TextFormField), 'abc');
    await tester.tap(find.text('Submit'));

    await tester.pumpAndSettle();

    expect(find.text('Please enter a valid number.'), findsOneWidget);
    expect(wasCalled, isFalse);
  });

  testWidgets('Rejects non-int strings when waiting for an int', (WidgetTester tester) async {
    final consoleState = ConsoleState();
    consoleState.waitForInput(DataType.int);
    var wasCalled = false;

    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: consoleState, submitInput: (_) { wasCalled = true; }));

    await tester.enterText(find.byType(TextFormField), 'abc');
    await tester.tap(find.text('Submit'));

    await tester.pumpAndSettle();

    expect(find.text('Input to readInt() can only be a whole number.'), findsOneWidget);
    expect(wasCalled, isFalse);
  });

  testWidgets('Rejects empty strings when waiting for any input type', (WidgetTester tester) async {
    final consoleState = ConsoleState();
    consoleState.waitForInput(DataType.string);
    var wasCalled = false;

    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: consoleState, submitInput: (_) { wasCalled = true; }));

    await tester.enterText(find.byType(TextFormField), '');
    await tester.tap(find.text('Submit'));

    await tester.pumpAndSettle();

    expect(find.text('Please enter a(n) string.'), findsOneWidget);
    expect(wasCalled, isFalse);
  });

  testWidgets('calls submitInput with the entered int when waiting for an int', (WidgetTester tester) async {
    final consoleState = ConsoleState();
    consoleState.waitForInput(DataType.int);
    var wasCalled = false;
    int? enteredValue;

    await tester.pumpWidgetWithMaterial(ExecutionConsole(consoleState: consoleState, submitInput: (value) { wasCalled = true; enteredValue = value; }));

    await tester.enterText(find.byType(TextFormField), '123');
    await tester.tap(find.text('Submit'));

    expect(wasCalled, isTrue);
    expect(enteredValue, 123);
  });
}