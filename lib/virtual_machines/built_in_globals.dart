import 'dart:math';

import 'data_type.dart';

class Constant {
  final DataType dataType;
  final dynamic value;

  const Constant(this.dataType, this.value);
}

const builtInMathConstants = {
  'pi': Constant(DataType.float, pi),
  'e': Constant(DataType.float, e),
};