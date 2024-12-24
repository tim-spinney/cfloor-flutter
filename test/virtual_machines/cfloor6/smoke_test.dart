import 'package:cfloor_flutter/virtual_machines/cfloor6/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/syntax_error_collector.dart';
import 'package:test/test.dart';

main() {
  test('compiles a program with arrays and for loops', () {
    const source = '''
    array<int> items = array<int>[4];
    for(int i = 0; i < 4; i = i + 1) {
      write("Enter a number (\$i of 4):");
      items[i] = read_int();
    }
    int sum = 0;
    for(int i = 0; i < 4; i = i + 1) {
      sum = sum + items[i];
    }
    float average = sum / 4;
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor6(source, errorCollector);
    expect(instructionGenerator.instructions, isNotEmpty);
    expect(errorCollector.errors, isEmpty);
  });
}