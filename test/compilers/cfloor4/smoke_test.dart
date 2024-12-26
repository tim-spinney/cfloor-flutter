import 'package:cfloor_flutter/compilers/cfloor4/compiler.dart';
import 'package:cfloor_flutter/compilers/syntax_error_collector.dart';
import 'package:test/test.dart';

main() {
  test('compiles a program with bools and conditionals', () {
    const source = '''
    int i = read_int();
    bool is_even = (i % 2) == 0;
    if(is_even) {
      write("\$i is even");
    } else {
      write("\$i is odd");
    }
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor4(source, errorCollector);
    expect(instructionGenerator.instructions, isNotEmpty);
    expect(errorCollector.errors, isEmpty);
  });
}