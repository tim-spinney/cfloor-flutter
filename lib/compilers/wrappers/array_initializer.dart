
import '../../language_core/data_type.dart';
import '../text_interval.dart';
import 'expression.dart';

class ArrayInitializer implements Expression {
  final TextInterval textRange;
  final int length;
  final DataType innerType;

  ArrayInitializer(this.textRange, this.length, this.innerType);
}