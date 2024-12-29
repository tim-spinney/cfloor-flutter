import '../text_interval.dart';
import 'array_initializer.dart';
import 'expression.dart';

class ArrayLiteralElement {
  final String? numberText;
  final String? stringText;
  final String? booleanText;

  ArrayLiteralElement(this.numberText, this.stringText, this.booleanText);
}

class ArrayLiteral implements Expression {
  final TextInterval textRange;
  final List<ArrayLiteralElement> elements;

  ArrayLiteral(this.textRange, this.elements);
}