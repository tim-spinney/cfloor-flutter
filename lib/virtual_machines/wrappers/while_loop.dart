import '../instruction.dart';
import 'boolean_expression.dart';

class WhileLoop {
  final TextRange textRange;
  final BooleanExpression condition;

  WhileLoop(this.textRange, this.condition);
}