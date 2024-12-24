import 'package:cfloor_flutter/virtual_machines/cfloor5/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/syntax_error_collector.dart';
import 'package:test/test.dart';

main() {
  test('compiles a program with while loops', () {
    const source = '''
    int answer = 73;
    int guess = 0;
    while(guess != answer) {
      write("Guess a number between 1 and 100.");
      guess = read_int();
    }
    write("You got it!");
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor5(source, errorCollector);
    expect(instructionGenerator.instructions, isNotEmpty);
    expect(errorCollector.errors, isEmpty);
  });
}