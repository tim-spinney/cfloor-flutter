import 'package:antlr4/antlr4.dart';

class TextInterval {
  final Token _startToken, _endToken;

  int get start => _startToken.startIndex;
  int get end => _endToken.stopIndex;
  String get startPosition => '${_startToken.line}:${_startToken.charPositionInLine}';

  TextInterval(this._startToken, this._endToken);
}

