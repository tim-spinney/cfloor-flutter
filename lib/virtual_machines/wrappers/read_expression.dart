import '../data_type.dart';
import '../instruction.dart';

class ReadExpression {
  final TextRange textRange;
  final DataType dataType;

  ReadExpression(this.textRange, this.dataType);
}
