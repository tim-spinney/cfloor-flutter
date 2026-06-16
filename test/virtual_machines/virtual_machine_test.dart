import 'dart:ui';

import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/language_core/data_type.dart';
import 'package:cfloor_flutter/virtual_machines/data_destination.dart';
import 'package:cfloor_flutter/virtual_machines/instructions.dart';
import 'package:cfloor_flutter/virtual_machines/virtual_machine.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('advances to specified index on start', () {
    const targetRange = TextRange(start: 2, end: 3);
    List<VMInstruction> instructions = [
      VMNoOpInstruction(const TextRange(start: 0, end: 1)),
      VMNoOpInstruction(const TextRange(start: 1, end: 2)),
      VMNoOpInstruction(targetRange),
    ];
    final console = ConsoleState();
    final vm = VirtualMachine(console);
    vm.addInstructions(instructions);

    vm.start(2);

    expect(vm.currentInstruction.textRange, equals(targetRange));
  });

  test('does not advance if latest instruction makes it wait for input', () {
    final console = ConsoleState();
    final vm = VirtualMachine(console);
    List<VMInstruction> instructions = [
      VMReadInstruction(
        const TextRange(start: 0, end: 10),
        console,
        VMRegisterDataDestination(CompositeDataType(DataType.int, null), vm.memory, 0),
        DataType.int,
      ),
      VMNoOpInstruction(const TextRange(start: 10, end: 11)),
    ];
    vm.addInstructions(instructions);
    vm.start(0);

    vm.advanceStep();

    expect(vm.currentInstruction, isA<VMReadInstruction>());
  });
}