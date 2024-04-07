import 'package:cfloor_flutter/virtual_machines/virtual_memory.dart';
import 'package:cfloor_flutter/widgets/registers_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_tester_helpers.dart';

main() {
  testWidgets('does not show registers if not toggled', (WidgetTester tester) async {
    final memory = VirtualMemory();
    const registerValue = 'Should not appear';
    memory.registers[0] = registerValue;

    await tester.pumpWidgetWithMaterial(RegistersView(memory: memory));

    expect(find.text(registerValue), findsNothing);
  });

  testWidgets('shows registers when toggled', (WidgetTester tester) async {
    final memory = VirtualMemory();
    const registerValue = 'Should appear';
    memory.registers[0] = registerValue;

    await tester.pumpWidgetWithMaterial(RegistersView(memory: memory));

    final showRegisterSwitch = find.byType(Switch);
    await tester.tap(showRegisterSwitch);
    await tester.pump();

    expect(find.textContaining(registerValue), findsOneWidget);
    expect(tester.widget<Switch>(showRegisterSwitch).value, true);
  });

  testWidgets('shows all registers', (WidgetTester tester) async {
    final memory = VirtualMemory();
    const registerValue = 'Should appear';
    memory.registers[0] = registerValue;
    memory.registers[1] = registerValue;
    memory.registers[2] = true;

    await tester.pumpWidgetWithMaterial(RegistersView(memory: memory));

    final showRegisterSwitch = find.byType(Switch);
    await tester.tap(showRegisterSwitch);
    await tester.pump();

    expect(find.textContaining(registerValue), findsNWidgets(2));
    expect(find.textContaining('true'), findsOneWidget);
    expect(tester.widget<Switch>(showRegisterSwitch).value, true);
  });
}