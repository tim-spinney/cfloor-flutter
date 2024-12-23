
import 'package:cfloor_flutter/virtual_machines/cfloor1/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/syntax_error_collector.dart';
import 'package:test/test.dart';

main() {
  test('compiles sample program shown in editor', () {
    const source = '''
    int a = 4;
    a = a * a;
    write(a);
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor1(source, errorCollector);
    expect(instructionGenerator.instructions, isNotEmpty);
    expect(errorCollector.errors, isEmpty);
  });
}