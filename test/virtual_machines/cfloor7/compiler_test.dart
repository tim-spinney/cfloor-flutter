
import 'package:cfloor_flutter/virtual_machines/cfloor7/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/instruction_generating_tree_walker.dart';
import 'package:cfloor_flutter/virtual_machines/syntax_error_collector.dart';
import 'package:test/test.dart';

main() {
  test('test', () {
    const source = '''
    void blah() {
      write("test");
    }
    void main() {
      int x = 2;
    }
    ''';
    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor7(source, errorCollector);
    instructionGenerator.instructions.forEach(print);
    expect(instructionGenerator, isA<HasEntryPoint>());
    expect((instructionGenerator as HasEntryPoint).entryPoint, isNot(0));
  });
}