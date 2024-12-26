

import 'package:cfloor_flutter/virtual_machines/language_level.dart';
import 'package:cfloor_flutter/widgets/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_tester_helpers.dart';

main() {
  configureViewSize(WidgetTester tester) {
    tester.view.devicePixelRatio = 1.0;
    tester.view.physicalSize = const Size(1600, 800);
  }

  testWidgets('initially shows editable text with sample program', (tester) async {
    configureViewSize(tester);

    await tester.pumpWidgetWithMaterial(const CodeEditor());

    await tester.pumpAndSettle();

    final formFieldFinder = find.byType(TextFormField);
    expect(formFieldFinder, findsOneWidget);
    final formField = tester.widget<TextFormField>(formFieldFinder);
    expect(formField.controller?.text, isNotEmpty);
  });

  testWidgets('switches to a read-only view of code on execution', (tester) async {
    configureViewSize(tester);

    await tester.pumpWidgetWithMaterial(const CodeEditor());

    const program = 'int x = 0;';

    final formFieldFinder = find.byType(TextFormField);
    tester.widget<TextFormField>(formFieldFinder).controller!.clear();
    await tester.enterText(find.byType(TextFormField), program);

    await tester.tap(find.byIcon(Icons.play_arrow));
    await tester.pumpAndSettle();

    expect(formFieldFinder, findsNothing);
    expect(find.textContaining(program, findRichText: true), findsOneWidget);
  });

  testWidgets('switches back to edit mode after completing execution of the program', (tester) async {
    configureViewSize(tester);

    await tester.pumpWidgetWithMaterial(const CodeEditor());

    const program = 'write("test");';

    final formFieldFinder = find.byType(TextFormField);
    tester.widget<TextFormField>(formFieldFinder).controller!.clear();
    await tester.enterText(find.byType(TextFormField), program);

    final playFinder = find.byIcon(Icons.play_arrow);
    await tester.tap(playFinder);
    await tester.pumpAndSettle();

    final stepFinder = find.byIcon(Icons.arrow_forward);
    await tester.tap(stepFinder);
    await tester.pumpAndSettle();

    expect(formFieldFinder, findsOneWidget);
    expect(playFinder, findsOneWidget);
    expect(stepFinder, findsNothing);
  });

  testWidgets('shows errors when asked to compile an invalid program', (tester) async {
    configureViewSize(tester);

    await tester.pumpWidgetWithMaterial(const CodeEditor());

    const program = '(+ 2 2)';

    final formFieldFinder = find.byType(TextFormField);
    tester.widget<TextFormField>(formFieldFinder).controller!.clear();
    await tester.enterText(find.byType(TextFormField), program);

    await tester.tap(find.byIcon(Icons.play_arrow));
    await tester.pumpAndSettle();

    expect(formFieldFinder, findsOneWidget);
    expect(find.textContaining('Syntax error'), findsAtLeast(1));
  });

  testWidgets('reports an uncaught exception in program execution to the user', (tester) async {
    configureViewSize(tester);

    await tester.pumpWidgetWithMaterial(const CodeEditor());

    const program = '''
    array<int> a = { 1 };
    int i = a[1];
    write(i);
    ''';

    final formFieldFinder = find.byType(TextFormField);
    tester.widget<TextFormField>(formFieldFinder).controller!.clear();
    await tester.enterText(find.byType(TextFormField), program);


    await tester.tap(find.byType(DropdownButton<LanguageLevel>));
    await tester.pump();

    await tester.tap(find.textContaining('Level 6:'));
    await tester.pump();


    await tester.tap(find.byIcon(Icons.play_arrow));
    await tester.pumpAndSettle();

    final stepFinder = find.byIcon(Icons.arrow_forward);
    for(int i = 0; i < 2; i++) {
      await tester.tap(stepFinder);
      await tester.pumpAndSettle();
    }

    expect(stepFinder, findsNothing);
    expect(find.textContaining('Program crash: '), findsOneWidget);
  });
}