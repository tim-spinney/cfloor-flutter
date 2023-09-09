import '../text_interval.dart';
import 'expression.dart';

class ReturnStatement {
  TextInterval textRange;
  Expression? expression;

  ReturnStatement(this.textRange, this.expression);
}