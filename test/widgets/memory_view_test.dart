import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cfloor_flutter/virtual_machines/virtual_memory.dart';
import 'package:cfloor_flutter/widgets/memory_view.dart';

import 'widget_tester_helpers.dart';

main() {
  testWidgets('shows no variables when memory is empty', (WidgetTester tester) async {
    final memory = VirtualMemory();
    await tester.pumpWidgetWithMaterial(MemoryView(memory: memory));

    expect(find.byType(Card), findsNothing);
  });

  testWidgets('shows all named variables in current scope', (WidgetTester tester) async {
    final memory = VirtualMemory();
    memory.currentScope.add({'a': 1, 'b': 2});
    await tester.pumpWidgetWithMaterial(MemoryView(memory: memory));

    expect(find.text('a: 1'), findsOneWidget);
    expect(find.text('b: 2'), findsOneWidget);
  });

  testWidgets('does not show variables not in current scope', (WidgetTester tester) async {
    final memory = VirtualMemory();
    memory.currentScope.add({'c': 3});
    memory.pushStack();
    memory.currentScope.add({'a': 1, 'b': 2});

    await tester.pumpWidgetWithMaterial(MemoryView(memory: memory));

    expect(find.text('c: 3'), findsNothing);
    expect(find.text('a: 1'), findsOneWidget);
  });
}