
import 'package:cfloor_flutter/compilers/cfloor1/compiler.dart';
import 'package:cfloor_flutter/compilers/syntax_error_collector.dart';
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

  test('produces errors for invalid syntax', () {
    const source = '''
    int a = 4
    a = a * a;
    write(a);
    ''';

    final errorCollector = SyntaxErrorCollector();
    compileCFloor1(source, errorCollector);
    expect(errorCollector.errors, isNotEmpty);
  });

  test('produces errors for duplicate variable names', () {
    const source = '''
    int a = 4;
    int a = 5;
    write(a);
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor1(source, errorCollector);
    expect(instructionGenerator.semanticErrorCollector.errors, isNotEmpty);
    print(instructionGenerator.semanticErrorCollector.errors);
  });
}