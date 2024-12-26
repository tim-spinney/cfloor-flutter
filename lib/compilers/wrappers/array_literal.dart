import '../text_interval.dart';
import 'array_initializer.dart';
import 'expression.dart';

class ArrayLiteralElement {
  final String? numberText;
  final String? stringText;
  final String? booleanText;
  final ArrayLiteral? nestedArray;
  final ArrayInitializer? arrayInitializer;

  ArrayLiteralElement(this.numberText, this.stringText, this.booleanText, this.nestedArray, this.arrayInitializer);
}

class ArrayLiteral implements Expression {
  final TextInterval textRange;
  final List<ArrayLiteralElement> elements;

  ArrayLiteral(this.textRange, this.elements);
}