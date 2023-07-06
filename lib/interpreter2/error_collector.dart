
import 'package:antlr4/antlr4.dart';

class ErrorCollector extends BaseErrorListener {
  final List<String> errors = [];

  @override
  void syntaxError(
      Recognizer recognizer,
      Object? offendingSymbol,
      int? line,
      int charPositionInLine,
      String msg,
      RecognitionException? e
      ) {
    print('Syntax error at line $line:$charPositionInLine: $msg');
    errors.add('Syntax error at line $line:$charPositionInLine: $msg');
  }
}