// Generated from grammars/CFloor3.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor3Listener.dart';
import 'CFloor3BaseListener.dart';
const int RULE_expression = 0, RULE_mathOperand = 1, RULE_stringLengthExpression = 2, 
          RULE_readFunctionExpression = 3, RULE_mathFunctionExpression = 4, 
          RULE_program = 5, RULE_statement = 6, RULE_declAssignStatement = 7, 
          RULE_assignStatement = 8, RULE_writeStatement = 9, RULE_type = 10, 
          RULE_assignment = 11, RULE_mathExpression = 12, RULE_variableAccessor = 13;
class CFloor3Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_Primitive = 17, TOKEN_Number = 18, 
                   TOKEN_MathOperator = 19, TOKEN_StringLiteral = 20, TOKEN_WS = 21, 
                   TOKEN_Identifier = 22;

  @override
  final List<String> ruleNames = [
    'expression', 'mathOperand', 'stringLengthExpression', 'readFunctionExpression', 
    'mathFunctionExpression', 'program', 'statement', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'type', 'assignment', 'mathExpression', 
    'variableAccessor'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'length('", "'read_int()'", "'read_float()'", 
      "'read_string()'", "'floor'", "'ceil'", "'round'", "'sqrt'", "'sin'", 
      "'cos'", "'tan'", "';'", "'write'", "'='"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, "Primitive", "Number", "MathOperator", 
      "StringLiteral", "WS", "Identifier"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'CFloor3.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  CFloor3Parser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 0, RULE_expression);
    try {
      state = 31;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
      case TOKEN_T__2:
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_Number:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 1);
        state = 28;
        mathExpression();
        break;
      case TOKEN_T__3:
      case TOKEN_T__4:
      case TOKEN_T__5:
        enterOuterAlt(_localctx, 2);
        state = 29;
        readFunctionExpression();
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 3);
        state = 30;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 2, RULE_mathOperand);
    try {
      state = 41;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 33;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 34;
        variableAccessor();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 35;
        match(TOKEN_T__0);
        state = 36;
        mathExpression();
        state = 37;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
        enterOuterAlt(_localctx, 4);
        state = 39;
        mathFunctionExpression();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 5);
        state = 40;
        stringLengthExpression();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StringLengthExpressionContext stringLengthExpression() {
    dynamic _localctx = StringLengthExpressionContext(context, state);
    enterRule(_localctx, 4, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 43;
      match(TOKEN_T__2);
      state = 44;
      variableAccessor();
      state = 45;
      match(TOKEN_T__1);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ReadFunctionExpressionContext readFunctionExpression() {
    dynamic _localctx = ReadFunctionExpressionContext(context, state);
    enterRule(_localctx, 6, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 47;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 112) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MathFunctionExpressionContext mathFunctionExpression() {
    dynamic _localctx = MathFunctionExpressionContext(context, state);
    enterRule(_localctx, 8, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 49;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 16256) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 50;
      match(TOKEN_T__0);
      state = 51;
      mathExpression();
      state = 52;
      match(TOKEN_T__1);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 10, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 55; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 54;
        statement();
        state = 57; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4358144) != 0));
      state = 59;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 12, RULE_statement);
    try {
      state = 64;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 61;
        declAssignStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 62;
        assignStatement();
        break;
      case TOKEN_T__14:
        enterOuterAlt(_localctx, 3);
        state = 63;
        writeStatement();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 14, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 66;
      type();
      state = 67;
      assignment();
      state = 68;
      match(TOKEN_T__13);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AssignStatementContext assignStatement() {
    dynamic _localctx = AssignStatementContext(context, state);
    enterRule(_localctx, 16, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 70;
      assignment();
      state = 71;
      match(TOKEN_T__13);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 18, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 73;
      match(TOKEN_T__14);
      state = 74;
      match(TOKEN_T__0);
      state = 78;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 75;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 76;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 77;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 80;
      match(TOKEN_T__1);
      state = 81;
      match(TOKEN_T__13);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 20, RULE_type);
    try {
      enterOuterAlt(_localctx, 1);
      state = 83;
      match(TOKEN_Primitive);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 22, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 85;
      match(TOKEN_Identifier);
      state = 86;
      match(TOKEN_T__15);
      state = 87;
      expression();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 24, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 89;
      mathOperand();
      state = 92;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 90;
        match(TOKEN_MathOperator);
        state = 91;
        mathOperand();
      }

    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 26, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 94;
      match(TOKEN_Identifier);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  static const List<int> _serializedATN = [
      4,1,22,97,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,1,
      0,1,0,1,0,3,0,32,8,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,42,8,1,1,
      2,1,2,1,2,1,2,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,5,4,5,56,8,5,11,5,12,5,
      57,1,5,1,5,1,6,1,6,1,6,3,6,65,8,6,1,7,1,7,1,7,1,7,1,8,1,8,1,8,1,9,
      1,9,1,9,1,9,1,9,3,9,79,8,9,1,9,1,9,1,9,1,10,1,10,1,11,1,11,1,11,1,
      11,1,12,1,12,1,12,3,12,93,8,12,1,13,1,13,1,13,0,0,14,0,2,4,6,8,10,
      12,14,16,18,20,22,24,26,0,2,1,0,4,6,1,0,7,13,94,0,31,1,0,0,0,2,41,
      1,0,0,0,4,43,1,0,0,0,6,47,1,0,0,0,8,49,1,0,0,0,10,55,1,0,0,0,12,64,
      1,0,0,0,14,66,1,0,0,0,16,70,1,0,0,0,18,73,1,0,0,0,20,83,1,0,0,0,22,
      85,1,0,0,0,24,89,1,0,0,0,26,94,1,0,0,0,28,32,3,24,12,0,29,32,3,6,3,
      0,30,32,5,20,0,0,31,28,1,0,0,0,31,29,1,0,0,0,31,30,1,0,0,0,32,1,1,
      0,0,0,33,42,5,18,0,0,34,42,3,26,13,0,35,36,5,1,0,0,36,37,3,24,12,0,
      37,38,5,2,0,0,38,42,1,0,0,0,39,42,3,8,4,0,40,42,3,4,2,0,41,33,1,0,
      0,0,41,34,1,0,0,0,41,35,1,0,0,0,41,39,1,0,0,0,41,40,1,0,0,0,42,3,1,
      0,0,0,43,44,5,3,0,0,44,45,3,26,13,0,45,46,5,2,0,0,46,5,1,0,0,0,47,
      48,7,0,0,0,48,7,1,0,0,0,49,50,7,1,0,0,50,51,5,1,0,0,51,52,3,24,12,
      0,52,53,5,2,0,0,53,9,1,0,0,0,54,56,3,12,6,0,55,54,1,0,0,0,56,57,1,
      0,0,0,57,55,1,0,0,0,57,58,1,0,0,0,58,59,1,0,0,0,59,60,5,0,0,1,60,11,
      1,0,0,0,61,65,3,14,7,0,62,65,3,16,8,0,63,65,3,18,9,0,64,61,1,0,0,0,
      64,62,1,0,0,0,64,63,1,0,0,0,65,13,1,0,0,0,66,67,3,20,10,0,67,68,3,
      22,11,0,68,69,5,14,0,0,69,15,1,0,0,0,70,71,3,22,11,0,71,72,5,14,0,
      0,72,17,1,0,0,0,73,74,5,15,0,0,74,78,5,1,0,0,75,79,3,26,13,0,76,79,
      5,18,0,0,77,79,5,20,0,0,78,75,1,0,0,0,78,76,1,0,0,0,78,77,1,0,0,0,
      79,80,1,0,0,0,80,81,5,2,0,0,81,82,5,14,0,0,82,19,1,0,0,0,83,84,5,17,
      0,0,84,21,1,0,0,0,85,86,5,22,0,0,86,87,5,16,0,0,87,88,3,0,0,0,88,23,
      1,0,0,0,89,92,3,2,1,0,90,91,5,19,0,0,91,93,3,2,1,0,92,90,1,0,0,0,92,
      93,1,0,0,0,93,25,1,0,0,0,94,95,5,22,0,0,95,27,1,0,0,0,6,31,41,57,64,
      78,92
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor3Parser.TOKEN_StringLiteral, 0);
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitExpression(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor3Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext? mathFunctionExpression() => getRuleContext<MathFunctionExpressionContext>(0);
  StringLengthExpressionContext? stringLengthExpression() => getRuleContext<StringLengthExpressionContext>(0);
  MathOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterMathOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitMathOperand(this);
  }
}

class StringLengthExpressionContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  StringLengthExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_stringLengthExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterStringLengthExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitStringLengthExpression(this);
  }
}

class ReadFunctionExpressionContext extends ParserRuleContext {
  ReadFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterReadFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitReadFunctionExpression(this);
  }
}

class MathFunctionExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterMathFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitMathFunctionExpression(this);
  }
}

class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(CFloor3Parser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitProgram(this);
  }
}

class StatementContext extends ParserRuleContext {
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitStatement(this);
  }
}

class DeclAssignStatementContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  DeclAssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declAssignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterDeclAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitDeclAssignStatement(this);
  }
}

class AssignStatementContext extends ParserRuleContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitAssignStatement(this);
  }
}

class WriteStatementContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  TerminalNode? Number() => getToken(CFloor3Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor3Parser.TOKEN_StringLiteral, 0);
  WriteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_writeStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterWriteStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitWriteStatement(this);
  }
}

class TypeContext extends ParserRuleContext {
  TerminalNode? Primitive() => getToken(CFloor3Parser.TOKEN_Primitive, 0);
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitType(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor3Parser.TOKEN_Identifier, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitAssignment(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? MathOperator() => getToken(CFloor3Parser.TOKEN_MathOperator, 0);
  MathExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitMathExpression(this);
  }
}

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor3Parser.TOKEN_Identifier, 0);
  VariableAccessorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableAccessor;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterVariableAccessor(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitVariableAccessor(this);
  }
}

