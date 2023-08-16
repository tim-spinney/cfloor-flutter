import '../instruction.dart';
import 'identifier.dart';
import 'math_expression.dart';

class VariableAccessor {
  final TextRange textRange;
  final Identifier variableIdentifier;
  final MathExpression? arrayIndexer;

  VariableAccessor(this.textRange, this.variableIdentifier, { this.arrayIndexer });
}