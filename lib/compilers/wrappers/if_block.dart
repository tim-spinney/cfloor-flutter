import '../text_interval.dart';
import 'boolean_expression.dart';

class IfBlock {
  final TextInterval textRange;
  final List<BooleanExpression> conditions;
  final bool hasElse;

  IfBlock(this.textRange, this.conditions, this.hasElse);
}