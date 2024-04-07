

import 'package:cfloor_flutter/virtual_machines/language_level.dart';
import 'package:cfloor_flutter/widgets/language_level_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_tester_helpers.dart';

main() {
  testWidgets('Sets dropdown value to given languageLevel', (WidgetTester tester) async {
    const languageLevel = LanguageLevel.cfloor3;

    await tester.pumpWidgetWithMaterial(const LanguageLevelControls(languageLevel: languageLevel));

    expect(find.text('Level 3: strings'), findsOneWidget);
  });

  testWidgets('Calls changeLanguageLevel when dropdown value is changed', (WidgetTester tester) async {
    LanguageLevel? changedLevel;

    await tester.pumpWidgetWithMaterial(LanguageLevelControls(
      languageLevel: LanguageLevel.cfloor2,
      changeLanguageLevel: (level) => changedLevel = level,
    ));

    await tester.tap(find.byType(DropdownButton<LanguageLevel>));
    await tester.pump();

    await tester.tap(find.text('Level 4: booleans and conditionals'));
    await tester.pump();

    expect(changedLevel, LanguageLevel.cfloor4);
  });
}