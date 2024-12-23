import 'package:cfloor_flutter/virtual_machines/cfloor2/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/syntax_error_collector.dart';
import 'package:test/test.dart';

main() {
  test('compiles a program that uses floats', () {
    const source = '''
    int r = read_int();
    float area = 0;
    area = r * 3.1415926535;
    write(area);
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor2(source, errorCollector);
    expect(instructionGenerator.instructions, isNotEmpty);
    expect(errorCollector.errors, isEmpty);
  });
}