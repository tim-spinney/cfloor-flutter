import 'package:cfloor_flutter/compilers/cfloor7/compiler.dart';
import 'package:cfloor_flutter/compilers/instruction_generating_tree_walker.dart';
import 'package:cfloor_flutter/compilers/syntax_error_collector.dart';
import 'package:cfloor_flutter/compilers/wrappers/data_source.dart';
import 'package:cfloor_flutter/compilers/wrappers/instructions.dart';
import 'package:test/test.dart';

main() {
  test('uses main() as an entry point, even if not the first function', () {
    const source = '''
    void blah() {
      write("test");
    }
    void main() {
      blah();
    }
    ''';
    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor7(source, errorCollector);
    expect(instructionGenerator, isA<HasEntryPoint>());
    expect((instructionGenerator as HasEntryPoint).entryPoint, isNot(0));
  });

  test('creates a return statement that returns a specific value', () {
    const source = '''
    int blah() {
      write("test");
      return 1;
    }
    void main() {
      blah();
    }
    ''';
    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor7(source, errorCollector);
    expect(instructionGenerator.instructions, contains(isA<ReturnInstruction>()));
    final returnInstruction = instructionGenerator.instructions.firstWhere((instruction) => instruction is ReturnInstruction) as ReturnInstruction;
    final dataSource = returnInstruction.returnValueSource;
    expect(dataSource, isNotNull);
    expect(dataSource, isA<ConstantDataSource>());
    expect((dataSource as ConstantDataSource).value, equals(1));
  });

  test('creates a return statement automatically for void function without explicit return', () {
    const source = '''
    void main() {
      int x = 2;
    }
    ''';
    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor7(source, errorCollector);
    expect(instructionGenerator.instructions, containsOnce(isA<ReturnInstruction>()));
    final returnInstruction = instructionGenerator.instructions.firstWhere((instruction) => instruction is ReturnInstruction);
    expect((returnInstruction as ReturnInstruction).returnValueSource, isNull);
  });

  test('sets target instruction for call statement', () {
    const source = '''
    void blah() {
      write("test");
    }
    void main() {
      blah();
    }
    ''';
    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor7(source, errorCollector);
    expect(instructionGenerator.instructions, containsOnce(isA<CallInstruction>()));
    final callInstruction = instructionGenerator.instructions.firstWhere((instruction) => instruction is CallInstruction) as CallInstruction;
    expect(callInstruction.destinationInstructionIndex, 0);
  });
}