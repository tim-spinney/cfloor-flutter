import '../text_interval.dart';
import 'expression.dart';

class StringLiteral implements Expression {
  final TextInterval textRange;
  final String content;

  StringLiteral(this.textRange, this.content);
}