import 'package:cfloor_flutter/console_state.dart';
import 'package:cfloor_flutter/compilers/cfloor7/compiler.dart';
import 'package:cfloor_flutter/compilers/instruction_generating_tree_walker.dart';
import 'package:cfloor_flutter/virtual_machines/instructions.dart';
import 'package:cfloor_flutter/compilers/syntax_error_collector.dart';
import 'package:cfloor_flutter/virtual_machines/virtual_machine.dart';
import 'package:test/test.dart';

main() {
  group('language level 7 with all features', () {
    const sourceText = '''
        int square(int x) {
          return x * x;
        }
        int fibbonacci(int n) {
          if(n < 2) {
            return n;
          } else {
            int left = n - 1;
            int right = n - 2;
            int result = fibbonacci(left) + fibbonacci(right);
            return result;
          }
        }
        void main() {
          write("Enter a starting number.");
          int n = read_int();
          if(n < 0) {
            write("The number must be non-negative.");
            return;
          }
          for(int i = n; i >= 0; i = i - 1) {
            int fib = fibbonacci(i);
            write("the \$i-th fibbonacci number is \$fib");
            int squared = square(i);
            write("the square of \$i is \$squared");
          }
        }
    ''';

    InstructionGenerator compile() {
      final instructionGenerator = compileCFloor7(
          sourceText, SyntaxErrorCollector());
      expect(instructionGenerator.semanticErrorCollector.errors, isEmpty);
      return instructionGenerator;
    }

    test('language level 7 with all features', () {
      final instructionGenerator = compile();
      final consoleState = ConsoleState();
      final virtualMachine = VirtualMachine(consoleState);
      instructionGenerator.builtInVariables.forEach((name, constant) { virtualMachine.memory.addGlobalVariable(name, constant.value); });
      for (var instruction in instructionGenerator.instructions) {
        virtualMachine.addInstruction(VMInstruction.fromInstruction(instruction, virtualMachine));
      }
      final entryPoint = instructionGenerator is HasEntryPoint ? (instructionGenerator as HasEntryPoint).entryPoint : 0;
      virtualMachine.start(entryPoint);

      while (virtualMachine.isRunning) {
        if(consoleState.isWaitingForInput) {
          virtualMachine.submitInput(4);
        }
        virtualMachine.advanceStep();
      }
      expect(consoleState.consoleOutput.length, 11);
      expect(consoleState.consoleOutput[0].message, 'Enter a starting number.');
      expect(consoleState.consoleOutput[1].message, 'the 4-th fibbonacci number is 3');
      expect(consoleState.consoleOutput[6].message, 'the square of 2 is 4');
    });
  });
}