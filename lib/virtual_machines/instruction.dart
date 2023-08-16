import 'package:antlr4/antlr4.dart';

class TextRange {
  final Token _startToken, _endToken;

  int get start => _startToken.startIndex;
  int get end => _endToken.stopIndex;
  String get startPosition => '${_startToken.line}:${_startToken.charPositionInLine}';

  TextRange(this._startToken, this._endToken);
}

abstract class Instruction {
  final TextRange textRange;
  Instruction(this.textRange);
  void evaluate();
  bool get shouldIncrementProgramCounter => true;
}
