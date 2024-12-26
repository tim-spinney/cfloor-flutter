import 'expression.dart';

import '../../language_core/data_type.dart';
import '../text_interval.dart';

class ReadExpression implements Expression {
  static const _functionNamePattern = r"^read_([a-z]*)";

  final TextInterval textRange;
  late final DataType dataType;

  ReadExpression(this.textRange, String functionName) {
    dataType = _determineReadExpressionType(functionName);
  }

  DataType _determineReadExpressionType(String functionName) {
    final type = RegExp(_functionNamePattern).firstMatch(functionName)?.group(1)?.toLowerCase();
    return switch(type) {
      'int' => DataType.int,
      'float' => DataType.float,
      'string' => DataType.string,
      _ => throw Exception('Unrecognized read function: $functionName'),
    };
  }
}
