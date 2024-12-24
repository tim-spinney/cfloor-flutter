import 'package:cfloor_flutter/virtual_machines/cfloor3/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/syntax_error_collector.dart';
import 'package:test/test.dart';

main() {
  test('compiles a program that uses strings', () {
    const source = '''
    string s = read_string();
    int l = length(s);
    write("your string is \$l characters long");
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor3(source, errorCollector);
    expect(instructionGenerator.instructions, isNotEmpty);
    expect(errorCollector.errors, isEmpty);
  });
}