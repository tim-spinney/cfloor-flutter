
import '../instruction.dart';

class Identifier {
  final TextRange textRange;
  final String variableName;

  Identifier(this.textRange, this.variableName);
}