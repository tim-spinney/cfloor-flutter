import '../instruction.dart';

class StringLiteral {
  final TextRange textRange;
  final String content;

  StringLiteral(this.textRange, this.content);
}