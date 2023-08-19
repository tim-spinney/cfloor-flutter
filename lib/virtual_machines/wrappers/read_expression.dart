import '../data_type.dart';
import '../text_interval.dart';

class ReadExpression {
  final TextInterval textRange;
  final DataType dataType;

  ReadExpression(this.textRange, this.dataType);
}
