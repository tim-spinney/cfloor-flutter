
import '../data_type.dart';
import '../instruction.dart';

class ArrayInitializer {
  final TextRange textRange;
  final int length;
  final DataType innerType;

  ArrayInitializer(this.textRange, this.length, this.innerType);
}