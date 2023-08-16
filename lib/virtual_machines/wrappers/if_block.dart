import '../instruction.dart';
import 'boolean_expression.dart';

class IfBlock {
  final TextRange textRange;
  final List<BooleanExpression> conditions;
  final bool hasElse;

  IfBlock(this.textRange, this.conditions, this.hasElse);
}