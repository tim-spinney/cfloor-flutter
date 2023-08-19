import '../text_interval.dart';
import 'array_literal.dart';
import 'boolean_expression.dart';
import 'math_expression.dart';
import 'read_expression.dart';
import 'string_literal.dart';
import 'variable_accessor.dart';
import 'array_initializer.dart';

class Assignment {
  final TextInterval textRange;
  final VariableAccessor destination;
  final ReadExpression? readExpression;
  final MathExpression? mathExpression;
  final StringLiteral? stringLiteral;
  final BooleanExpression? booleanExpression;
  final ArrayInitializer? arrayInitializer;
  final ArrayLiteral? arrayLiteral;

  Assignment(
      this.textRange,
      this.destination,
      this.readExpression,
      this.mathExpression,
      {
        this.stringLiteral,
        this.booleanExpression,
        this.arrayInitializer,
        this.arrayLiteral,
      }
    );
}