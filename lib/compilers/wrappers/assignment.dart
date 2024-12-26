import '../text_interval.dart';
import 'array_literal.dart';
import 'boolean_expression.dart';
import 'expression.dart';
import 'math_expression.dart';
import 'read_expression.dart';
import 'string_literal.dart';
import 'variable_accessor.dart';
import 'array_initializer.dart';

class Assignment {
  final TextInterval textRange;
  final VariableAccessor destination;
  final Expression expression;

  Assignment(
      this.textRange,
      this.destination,
      this.expression,
    );
}