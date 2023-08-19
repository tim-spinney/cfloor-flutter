import 'package:antlr4/antlr4.dart';
import '../text_interval.dart';
import 'string_literal.dart';
import 'variable_accessor.dart';

class WriteStatement {
  final TextInterval textRange;
  final String? numberText;
  final VariableAccessor? variableAccessor;
  final StringLiteral? stringLiteral;

  WriteStatement(this.textRange, this.numberText, this.variableAccessor, this.stringLiteral);
}
