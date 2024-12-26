import '../text_interval.dart';
import 'boolean_expression.dart';

class WhileLoop {
  final TextInterval textRange;
  final BooleanExpression condition;

  WhileLoop(this.textRange, this.condition);
}