
import 'package:cfloor_flutter/compilers/cfloor1/compiler.dart';
import 'package:cfloor_flutter/compilers/math_operator.dart';
import 'package:cfloor_flutter/compilers/syntax_error_collector.dart';
import 'package:cfloor_flutter/compilers/wrappers/data_destination.dart';
import 'package:cfloor_flutter/compilers/wrappers/data_source.dart';
import 'package:cfloor_flutter/compilers/wrappers/instructions.dart';
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
  });

  test('performs multiplication before addition', () {
    const source = '''
    int a = 3 + 4 * 5;
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor1(source, errorCollector);
    expect(instructionGenerator.semanticErrorCollector.errors, isEmpty);
    final mathInstructions = instructionGenerator.instructions.whereType<MathInstruction>().toList();
    expect(
      mathInstructions.indexWhere((instruction) => instruction.operator == MathOperator.times),
      lessThan(mathInstructions.indexWhere((instruction) => instruction.operator == MathOperator.plus),)
    );
    final mult = mathInstructions.firstWhere((instruction) => instruction.operator == MathOperator.times);
    final add = mathInstructions.firstWhere((instruction) => instruction.operator == MathOperator.plus);
    expect((mult.destination as RegisterDataDestination).register, (add.right as RegisterMemorySource).register);
  });

  test('performs parenthetical math expressions first', () {
    const source = '''
    int a = 5 * (3 + 4);
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor1(source, errorCollector);
    expect(instructionGenerator.semanticErrorCollector.errors, isEmpty);
    final mathInstructions = instructionGenerator.instructions.whereType<MathInstruction>().toList();
    expect(
        mathInstructions.indexWhere((instruction) => instruction.operator == MathOperator.times),
        greaterThan(mathInstructions.indexWhere((instruction) => instruction.operator == MathOperator.plus),)
    );
    final mult = mathInstructions.firstWhere((instruction) => instruction.operator == MathOperator.times);
    final add = mathInstructions.firstWhere((instruction) => instruction.operator == MathOperator.plus);
    expect((add.destination as RegisterDataDestination).register, (mult.right as RegisterMemorySource).register);
  });
  
  test('generates a read instruction for read_int', () {
    const source = '''
    int x = read_int();
    ''';

    final errorCollector = SyntaxErrorCollector();
    final instructionGenerator = compileCFloor1(source, errorCollector);
    
    expect(instructionGenerator.semanticErrorCollector.errors, isEmpty);
    expect(instructionGenerator.instructions, anyElement(isA<ReadInstruction>()));
  });
}