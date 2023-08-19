
import '../data_type.dart';
import '../text_interval.dart';

class ArrayInitializer {
  final TextInterval textRange;
  final int length;
  final DataType innerType;

  ArrayInitializer(this.textRange, this.length, this.innerType);
}