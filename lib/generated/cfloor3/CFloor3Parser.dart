// Generated from grammars/CFloor3.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor3Listener.dart';
import 'CFloor3BaseListener.dart';
const int RULE_type = 0, RULE_stringLengthExpression = 1, RULE_expression = 2, 
          RULE_assignment = 3, RULE_mathOperand = 4, RULE_readFunctionExpression = 5, 
          RULE_mathFunctionExpression = 6, RULE_program = 7, RULE_declAssignStatement = 8, 
          RULE_assignStatement = 9, RULE_writeStatement = 10, RULE_variableAccessor = 11, 
          RULE_mathExpression = 12, RULE_statement = 13;
class CFloor3Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_T__16 = 17, TOKEN_T__17 = 18, 
                   TOKEN_T__18 = 19, TOKEN_Number = 20, TOKEN_MathOperator = 21, 
                   TOKEN_StringLiteral = 22, TOKEN_WS = 23, TOKEN_Identifier = 24;

  @override
  final List<String> ruleNames = [
    'type', 'stringLengthExpression', 'expression', 'assignment', 'mathOperand', 
    'readFunctionExpression', 'mathFunctionExpression', 'program', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'variableAccessor', 'mathExpression', 
    'statement'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'int'", "'float'", "'string'", "'length('", "')'", "'='", "'('", 
      "'read_int()'", "'read_float()'", "'read_string()'", "'floor'", "'ceil'", 
      "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", "';'", "'write'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, "Number", "MathOperator", 
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 0, RULE_type);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 28;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 14) != 0))) {
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

  StringLengthExpressionContext stringLengthExpression() {
    dynamic _localctx = StringLengthExpressionContext(context, state);
    enterRule(_localctx, 2, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 30;
      match(TOKEN_T__3);
      state = 31;
      variableAccessor();
      state = 32;
      match(TOKEN_T__4);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 4, RULE_expression);
    try {
      state = 37;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__3:
      case TOKEN_T__6:
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_Number:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 1);
        state = 34;
        mathExpression();
        break;
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 2);
        state = 35;
        readFunctionExpression();
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 3);
        state = 36;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 6, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 39;
      match(TOKEN_Identifier);
      state = 40;
      match(TOKEN_T__5);
      state = 41;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 8, RULE_mathOperand);
    try {
      state = 51;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 43;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 44;
        variableAccessor();
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 3);
        state = 45;
        match(TOKEN_T__6);
        state = 46;
        mathExpression();
        state = 47;
        match(TOKEN_T__4);
        break;
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
        enterOuterAlt(_localctx, 4);
        state = 49;
        mathFunctionExpression();
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 5);
        state = 50;
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

  ReadFunctionExpressionContext readFunctionExpression() {
    dynamic _localctx = ReadFunctionExpressionContext(context, state);
    enterRule(_localctx, 10, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 53;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1792) != 0))) {
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
    enterRule(_localctx, 12, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 55;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 260096) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 56;
      match(TOKEN_T__6);
      state = 57;
      mathExpression();
      state = 58;
      match(TOKEN_T__4);
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
    enterRule(_localctx, 14, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 61; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 60;
        statement();
        state = 63; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 17301518) != 0));
      state = 65;
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 16, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 67;
      type();
      state = 68;
      assignment();
      state = 69;
      match(TOKEN_T__17);
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
    enterRule(_localctx, 18, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 71;
      assignment();
      state = 72;
      match(TOKEN_T__17);
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
    enterRule(_localctx, 20, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 74;
      match(TOKEN_T__18);
      state = 75;
      match(TOKEN_T__6);
      state = 79;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 76;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 77;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 78;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 81;
      match(TOKEN_T__4);
      state = 82;
      match(TOKEN_T__17);
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
    enterRule(_localctx, 22, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 84;
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 24, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 86;
      mathOperand();
      state = 89;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 87;
        match(TOKEN_MathOperator);
        state = 88;
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

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 26, RULE_statement);
    try {
      state = 94;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__18:
        enterOuterAlt(_localctx, 1);
        state = 91;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 92;
        assignStatement();
        break;
      case TOKEN_T__0:
      case TOKEN_T__1:
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 93;
        declAssignStatement();
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

  static const List<int> _serializedATN = [
      4,1,24,97,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,1,
      0,1,0,1,1,1,1,1,1,1,1,1,2,1,2,1,2,3,2,38,8,2,1,3,1,3,1,3,1,3,1,4,1,
      4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,52,8,4,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,
      7,4,7,62,8,7,11,7,12,7,63,1,7,1,7,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,10,
      1,10,1,10,1,10,1,10,3,10,80,8,10,1,10,1,10,1,10,1,11,1,11,1,12,1,12,
      1,12,3,12,90,8,12,1,13,1,13,1,13,3,13,95,8,13,1,13,0,0,14,0,2,4,6,
      8,10,12,14,16,18,20,22,24,26,0,3,1,0,1,3,1,0,8,10,1,0,11,17,94,0,28,
      1,0,0,0,2,30,1,0,0,0,4,37,1,0,0,0,6,39,1,0,0,0,8,51,1,0,0,0,10,53,
      1,0,0,0,12,55,1,0,0,0,14,61,1,0,0,0,16,67,1,0,0,0,18,71,1,0,0,0,20,
      74,1,0,0,0,22,84,1,0,0,0,24,86,1,0,0,0,26,94,1,0,0,0,28,29,7,0,0,0,
      29,1,1,0,0,0,30,31,5,4,0,0,31,32,3,22,11,0,32,33,5,5,0,0,33,3,1,0,
      0,0,34,38,3,24,12,0,35,38,3,10,5,0,36,38,5,22,0,0,37,34,1,0,0,0,37,
      35,1,0,0,0,37,36,1,0,0,0,38,5,1,0,0,0,39,40,5,24,0,0,40,41,5,6,0,0,
      41,42,3,4,2,0,42,7,1,0,0,0,43,52,5,20,0,0,44,52,3,22,11,0,45,46,5,
      7,0,0,46,47,3,24,12,0,47,48,5,5,0,0,48,52,1,0,0,0,49,52,3,12,6,0,50,
      52,3,2,1,0,51,43,1,0,0,0,51,44,1,0,0,0,51,45,1,0,0,0,51,49,1,0,0,0,
      51,50,1,0,0,0,52,9,1,0,0,0,53,54,7,1,0,0,54,11,1,0,0,0,55,56,7,2,0,
      0,56,57,5,7,0,0,57,58,3,24,12,0,58,59,5,5,0,0,59,13,1,0,0,0,60,62,
      3,26,13,0,61,60,1,0,0,0,62,63,1,0,0,0,63,61,1,0,0,0,63,64,1,0,0,0,
      64,65,1,0,0,0,65,66,5,0,0,1,66,15,1,0,0,0,67,68,3,0,0,0,68,69,3,6,
      3,0,69,70,5,18,0,0,70,17,1,0,0,0,71,72,3,6,3,0,72,73,5,18,0,0,73,19,
      1,0,0,0,74,75,5,19,0,0,75,79,5,7,0,0,76,80,3,22,11,0,77,80,5,20,0,
      0,78,80,5,22,0,0,79,76,1,0,0,0,79,77,1,0,0,0,79,78,1,0,0,0,80,81,1,
      0,0,0,81,82,5,5,0,0,82,83,5,18,0,0,83,21,1,0,0,0,84,85,5,24,0,0,85,
      23,1,0,0,0,86,89,3,8,4,0,87,88,5,21,0,0,88,90,3,8,4,0,89,87,1,0,0,
      0,89,90,1,0,0,0,90,25,1,0,0,0,91,95,3,20,10,0,92,95,3,18,9,0,93,95,
      3,16,8,0,94,91,1,0,0,0,94,92,1,0,0,0,94,93,1,0,0,0,95,27,1,0,0,0,6,
      37,51,63,79,89,94
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class TypeContext extends ParserRuleContext {
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

class StatementContext extends ParserRuleContext {
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
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

