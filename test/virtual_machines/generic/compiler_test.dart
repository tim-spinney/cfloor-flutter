import 'package:cfloor_flutter/virtual_machines/built_in_globals.dart';
import 'package:cfloor_flutter/virtual_machines/cfloor_array.dart';
import 'package:cfloor_flutter/virtual_machines/data_type.dart';
import 'package:cfloor_flutter/virtual_machines/generic/compiler.dart';
import 'package:cfloor_flutter/virtual_machines/semantic_error_collector.dart';
import 'package:cfloor_flutter/virtual_machines/text_interval.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/array_literal.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/assignment.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/data_destination.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/data_source.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/identifier.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/instructions.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/math_expression.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/math_operand.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/read_expression.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/string_literal.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/variable_accessor.dart';
import 'package:cfloor_flutter/virtual_machines/wrappers/write_statement.dart';
import 'package:test/test.dart';

class _SimpleTextInterval implements TextInterval {
  @override
  final end = 0;

  @override
  // TODO: implement start
  final start = 0;

  @override
  // TODO: implement startPosition
  final startPosition = '0:0';
}

void main() {
  late SemanticErrorCollector semanticErrorCollector;
  final Map<String, Constant> builtInVariables = {};
  late GenericCompiler compiler;

  setUp(() => {
    semanticErrorCollector = SemanticErrorCollector(),
    compiler = GenericCompiler(
      semanticErrorCollector,
      builtInVariables,
    ),
  });

  group('handleWriteStatement', () {
    test('throws an exception when the statement has no source for data', () {
      final writeStatement = WriteStatement(
        _SimpleTextInterval(),
        null,
        null,
        null,
      );
      expect(
        () => compiler.handleWriteStatement(writeStatement),
        throwsException,
      );
    });

    test('generates a write statement that sources a constant integer data source when given one', () {
      const number = 999;
      final writeStatement = WriteStatement(
        _SimpleTextInterval(),
        number.toString(),
        null,
        null,
      );
      compiler.handleWriteStatement(writeStatement);
      expect(compiler.topLevelInstructions, hasLength(1));
      final instruction = compiler.topLevelInstructions.first;
      expect(instruction, isA<WriteInstruction>());
      final writeInstruction = instruction as WriteInstruction;
      expect(writeInstruction.source, isA<ConstantDataSource>());
      final constantDataSource = writeInstruction.source as ConstantDataSource;
      expect(constantDataSource.value, number);
      expect(semanticErrorCollector.errors, isEmpty);
    });

    test('produces a semantic error and an exception when given a variable data source that does not match an existing variable', () {
      const variableName = 'nope';
      final writeStatement = WriteStatement(
        _SimpleTextInterval(),
        null,
        VariableAccessor(
          _SimpleTextInterval(),
          Identifier(
            _SimpleTextInterval(),
            variableName,
          ),
        ),
        null,
      );
      expect(() => compiler.handleWriteStatement(writeStatement), throwsException);
      expect(compiler.topLevelInstructions, isEmpty);
      expect(semanticErrorCollector.errors, hasLength(1));
      expect(semanticErrorCollector.errors.first, contains(variableName));
    });

    test('generates a write statement that sources a variable data source when given one that matches an existing variable', () {
      const variableName = 'abc';

      compiler = GenericCompiler(
        semanticErrorCollector,
        {
          variableName: const Constant(DataType.bool, true),
        }
      );

      final writeStatement = WriteStatement(
        _SimpleTextInterval(),
        null,
        VariableAccessor(
          _SimpleTextInterval(),
          Identifier(
            _SimpleTextInterval(),
            variableName,
          ),
        ),
        null,
      );
      compiler.handleWriteStatement(writeStatement);
      expect(compiler.topLevelInstructions, hasLength(1));
      final instruction = compiler.topLevelInstructions.first;
      expect(instruction, isA<WriteInstruction>());
      final writeInstruction = instruction as WriteInstruction;
      expect(writeInstruction.source, isA<VariableMemorySource>());
      final variableDataSource = writeInstruction.source as VariableMemorySource;
      expect(variableDataSource.variableName, variableName);
      expect(semanticErrorCollector.errors, isEmpty);
    });

    test('generates a write statement that sources a string literal when given one', () {
      const text = 'generates a write statement that sources a string literal when given one';
      final writeStatement = WriteStatement(
        _SimpleTextInterval(),
        null,
        null,
        StringLiteral(_SimpleTextInterval(), '"$text"'),
      );
      compiler.handleWriteStatement(writeStatement);
      expect(compiler.topLevelInstructions, hasLength(1));
      final instruction = compiler.topLevelInstructions.first;
      expect(instruction, isA<WriteInstruction>());
      final writeInstruction = instruction as WriteInstruction;
      expect(writeInstruction.source, isA<ConstantDataSource>());
      final constantDataSource = writeInstruction.source as ConstantDataSource;
      expect(constantDataSource.value, text);
      expect(semanticErrorCollector.errors, isEmpty);
    });

    test('processes interpolation in string literal', () {
      const variableName = 'my_variable';
      const variableValue = 4;

      compiler = GenericCompiler(
          semanticErrorCollector,
          {
            variableName: const Constant(DataType.int, variableValue),
          }
      );

      final writeStatement = WriteStatement(
        _SimpleTextInterval(),
        null,
        null,
        StringLiteral(_SimpleTextInterval(), '"$variableName is \$$variableName"'),
      );
      compiler.handleWriteStatement(writeStatement);
      expect(compiler.topLevelInstructions, hasLength(2));

      final firstInstruction = compiler.topLevelInstructions.first;
      expect(firstInstruction, isA<StringConcatenationInstruction>());
      final stringConcatenationInstruction = firstInstruction as StringConcatenationInstruction;
      expect(stringConcatenationInstruction.left, isA<ConstantDataSource>());
      final constantDataSource = stringConcatenationInstruction.left as ConstantDataSource;
      expect(constantDataSource.value, '$variableName is ');
      expect(stringConcatenationInstruction.right, isA<VariableMemorySource>());
      final variableMemorySource = stringConcatenationInstruction.right as VariableMemorySource;
      expect(variableMemorySource.variableName, variableName);

      final finalInstruction = compiler.topLevelInstructions.last;
      expect(finalInstruction, isA<WriteInstruction>());
      final writeInstruction = finalInstruction as WriteInstruction;
      expect(writeInstruction.source, isA<RegisterMemorySource>());
      expect(stringConcatenationInstruction.destination, isA<RegisterDataDestination>());
      expect(
          (stringConcatenationInstruction.destination as RegisterDataDestination).register,
          (writeInstruction.source as RegisterMemorySource).register
      );

      expect(semanticErrorCollector.errors, isEmpty);
    });
  });

  group('handleDeclAssignStatement', () {
    test('generates a semantic error and throws an exception if variable has array indexer', () {
      // assign to a[0]
      final destination = VariableAccessor(
        _SimpleTextInterval(),
        Identifier(_SimpleTextInterval(), 'a'),
        arrayIndexer: MathExpression(
          _SimpleTextInterval(),
          MathOperand(_SimpleTextInterval(), null, null, '0'),
          null,
          null,
        ),
      );
      final assignment = Assignment(
        _SimpleTextInterval(),
        destination,
        null,
        null,
        stringLiteral: StringLiteral(_SimpleTextInterval(), '"hello"'),
      );

      expect(() => compiler.handleDeclAssignStatement(assignment, CompositeDataType(DataType.array, DataType.string)), throwsException);

      expect(compiler.semanticErrorCollector.errors, hasLength(1));
      expect(compiler.semanticErrorCollector.errors.first, contains('array'));
    });

    test('assigns the result of a read expression to a variable', () {
      const destinationName = 'x';
      final destination = VariableAccessor(
        _SimpleTextInterval(),
        Identifier(_SimpleTextInterval(), destinationName),
      );
      final assignment = Assignment(
        _SimpleTextInterval(),
        destination,
        ReadExpression(_SimpleTextInterval(), 'read_int'),
        null,
      );

      compiler.handleDeclAssignStatement(assignment, DataType.int.toCompositeType());

      expect(compiler.topLevelInstructions, hasLength(2));
      final firstInstruction = compiler.topLevelInstructions.first;
      expect(firstInstruction, isA<ReadInstruction>());
      final readInstruction = firstInstruction as ReadInstruction;
      expect(readInstruction.destination, isA<RegisterDataDestination>());
      final registerDataDestination = readInstruction.destination as RegisterDataDestination;
      expect(registerDataDestination.dataType, DataType.int.toCompositeType());
      expect(registerDataDestination.register, 0);
      final lastInstruction = compiler.topLevelInstructions.last;
      expect(lastInstruction, isA<AssignmentInstruction>());
      final assignmentInstruction = lastInstruction as AssignmentInstruction;
      expect(assignmentInstruction.source, isA<RegisterMemorySource>());
      final registerMemorySource = assignmentInstruction.source as RegisterMemorySource;
      expect(registerMemorySource.register, registerDataDestination.register);
      expect(assignmentInstruction.destination, isA<VariableDataDestination>());
      final variableDataDestination = assignmentInstruction.destination as VariableDataDestination;
      expect(variableDataDestination.variableName, destinationName);
    });

    test('rejects array literal with mixed inner types', () {
      final destination = VariableAccessor(
        _SimpleTextInterval(),
        Identifier(_SimpleTextInterval(), 'a'),
      );
      final arrayLiteral = ArrayLiteral(
        _SimpleTextInterval(),
        [
          ArrayLiteralElement('1.23', null, null, null, null),
          ArrayLiteralElement(null, 'abc', null, null, null),
        ],
      );
      final assignment = Assignment(
        _SimpleTextInterval(),
        destination,
        null,
        null,
        arrayLiteral: arrayLiteral,
      );

      expect(() => compiler.handleDeclAssignStatement(assignment, CompositeDataType(DataType.array, DataType.string)), throwsException);

      expect(compiler.semanticErrorCollector.errors, hasLength(1));
      expect(compiler.semanticErrorCollector.errors.first, contains('string'));
      expect(compiler.semanticErrorCollector.errors.first, contains('float'));
    });

    test('rejects assignment of an array literal to a variable of different inner type', () {
      final destination = VariableAccessor(
        _SimpleTextInterval(),
        Identifier(_SimpleTextInterval(), 'a'),
      );
      final arrayLiteral = ArrayLiteral(
        _SimpleTextInterval(),
        [
          ArrayLiteralElement('1.23', null, null, null, null),
          ArrayLiteralElement('4.56', null, null, null, null),
        ],
      );
      final assignment = Assignment(
        _SimpleTextInterval(),
        destination,
        null,
        null,
        arrayLiteral: arrayLiteral,
      );

      compiler.handleDeclAssignStatement(assignment, CompositeDataType(DataType.array, DataType.int));

      expect(compiler.semanticErrorCollector.errors, hasLength(1));
      expect(compiler.semanticErrorCollector.errors.first, contains('Type mismatch'));
    });

    test('assigns a homogenous array literal to an array of the same type', () {
      final destination = VariableAccessor(
        _SimpleTextInterval(),
        Identifier(_SimpleTextInterval(), 'a'),
      );
      final arrayLiteral = ArrayLiteral(
        _SimpleTextInterval(),
        [
          ArrayLiteralElement(null, null, 'true', null, null),
          ArrayLiteralElement(null, null, 'false', null, null),
        ],
      );
      final assignment = Assignment(
        _SimpleTextInterval(),
        destination,
        null,
        null,
        arrayLiteral: arrayLiteral,
      );

      compiler.handleDeclAssignStatement(assignment, CompositeDataType(DataType.array, DataType.bool));

      expect(compiler.semanticErrorCollector.errors, isEmpty);
      expect(compiler.topLevelInstructions, hasLength(1));
      expect(compiler.topLevelInstructions.first, isA<AssignmentInstruction>());
      final assignmentInstruction = compiler.topLevelInstructions.first as AssignmentInstruction;
      expect(assignmentInstruction.source, isA<ConstantDataSource>());
      final constantDataSource = assignmentInstruction.source as ConstantDataSource;
      expect(constantDataSource.value, isA<CFloorArray>());
      final cFloorArray = constantDataSource.value as CFloorArray;
      expect(cFloorArray.innerType, DataType.bool);
      expect(cFloorArray.values, [true, false]);
    });
  });
}