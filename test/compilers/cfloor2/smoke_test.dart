import 'package:cfloor_flutter/compilers/cfloor2/compiler.dart';
import 'package:cfloor_flutter/compilers/syntax_error_collector.dart';
import 'package:cfloor_flutter/compilers/wrappers/instructions.dart';
import 'package:test/test.dart';

main() {
  test('compiles a program that uses floats', () {
    const source = '''
    int r = read_int();
    float area = read_float();
    area = r * 3.1415926535;
    int areaish = floor(area);
    write(areaish);
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor2(source, errorCollector);
    expect(instructionGenerator.instructions, isNotEmpty);
    expect(errorCollector.errors, isEmpty);
  });

  // sync with list in grammar
  for(final functionName in ['floor', 'ceil', 'round', 'sqrt', 'sin', 'cos', 'tan']) {
    test('recognizes $functionName as a valid math function', () {
      final source = '''
        float f = $functionName(1.2345);
      ''';

      final errorCollector = SyntaxErrorCollector();
      final instructionGenerator = compileCFloor2(source, errorCollector);
      expect(errorCollector.errors, isEmpty);
      expect(instructionGenerator.instructions.first, isA<MathFunctionInstruction>());
    });
  }
}
