// Generated from grammars/CFloor3.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor3Listener.dart';
import 'CFloor3BaseListener.dart';
const int RULE_stringLengthExpression = 0, RULE_assignment = 1, RULE_mathOperand = 2, 
          RULE_readFunctionExpression = 3, RULE_mathFunctionExpression = 4, 
          RULE_program = 5, RULE_declAssignStatement = 6, RULE_assignStatement = 7, 
          RULE_writeStatement = 8, RULE_mathExpression = 9, RULE_statement = 10;
class CFloor3Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_Type = 17, TOKEN_Number = 18, 
                   TOKEN_MathOperator = 19, TOKEN_StringLiteral = 20, TOKEN_WS = 21, 
                   TOKEN_Identifier = 22;

  @override
  final List<String> ruleNames = [
    'stringLengthExpression', 'assignment', 'mathOperand', 'readFunctionExpression', 
    'mathFunctionExpression', 'program', 'declAssignStatement', 'assignStatement', 
    'writeStatement', 'mathExpression', 'statement'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'length('", "')'", "'='", "'('", "'readInt()'", "'readFloat()'", 
      "'readString()'", "'floor'", "'ceil'", "'round'", "'sqrt'", "'sin'", 
      "'cos'", "'tan'", "';'", "'write'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, "Type", "Number", "MathOperator", 
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

  StringLengthExpressionContext stringLengthExpression() {
    dynamic _localctx = StringLengthExpressionContext(context, state);
    enterRule(_localctx, 0, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 22;
      match(TOKEN_T__0);
      state = 23;
      match(TOKEN_Identifier);
      state = 24;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 2, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 26;
      match(TOKEN_Identifier);
      state = 27;
      match(TOKEN_T__2);
      state = 31;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
      case TOKEN_T__3:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_Number:
      case TOKEN_Identifier:
        state = 28;
        mathExpression();
        break;
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
        state = 29;
        readFunctionExpression();
        break;
      case TOKEN_StringLiteral:
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
    enterRule(_localctx, 4, RULE_mathOperand);
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
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 3);
        state = 35;
        match(TOKEN_T__3);
        state = 36;
        mathExpression();
        state = 37;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
        enterOuterAlt(_localctx, 4);
        state = 39;
        mathFunctionExpression();
        break;
      case TOKEN_T__0:
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

  ReadFunctionExpressionContext readFunctionExpression() {
    dynamic _localctx = ReadFunctionExpressionContext(context, state);
    enterRule(_localctx, 6, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 43;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 224) != 0))) {
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
      state = 45;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 32512) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 46;
      match(TOKEN_T__3);
      state = 47;
      mathExpression();
      state = 48;
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
      state = 51; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 50;
        statement();
        state = 53; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4390912) != 0));
      state = 55;
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
    enterRule(_localctx, 12, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 57;
      match(TOKEN_Type);
      state = 58;
      assignment();
      state = 59;
      match(TOKEN_T__14);
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
    enterRule(_localctx, 14, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 61;
      assignment();
      state = 62;
      match(TOKEN_T__14);
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
    enterRule(_localctx, 16, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 64;
      match(TOKEN_T__15);
      state = 65;
      match(TOKEN_T__3);
      state = 66;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 5505024) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 67;
      match(TOKEN_T__1);
      state = 68;
      match(TOKEN_T__14);
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
    enterRule(_localctx, 18, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 70;
      mathOperand();
      state = 73;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 71;
        match(TOKEN_MathOperator);
        state = 72;
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
    enterRule(_localctx, 20, RULE_statement);
    try {
      state = 78;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__15:
        enterOuterAlt(_localctx, 1);
        state = 75;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 76;
        assignStatement();
        break;
      case TOKEN_Type:
        enterOuterAlt(_localctx, 3);
        state = 77;
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
      4,1,22,81,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,1,
      1,1,3,1,32,8,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,2,42,8,2,1,3,1,3,
      1,4,1,4,1,4,1,4,1,4,1,5,4,5,52,8,5,11,5,12,5,53,1,5,1,5,1,6,1,6,1,
      6,1,6,1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,9,3,9,74,8,9,1,
      10,1,10,1,10,3,10,79,8,10,1,10,0,0,11,0,2,4,6,8,10,12,14,16,18,20,
      0,3,1,0,5,7,1,0,8,14,3,0,18,18,20,20,22,22,79,0,22,1,0,0,0,2,26,1,
      0,0,0,4,41,1,0,0,0,6,43,1,0,0,0,8,45,1,0,0,0,10,51,1,0,0,0,12,57,1,
      0,0,0,14,61,1,0,0,0,16,64,1,0,0,0,18,70,1,0,0,0,20,78,1,0,0,0,22,23,
      5,1,0,0,23,24,5,22,0,0,24,25,5,2,0,0,25,1,1,0,0,0,26,27,5,22,0,0,27,
      31,5,3,0,0,28,32,3,18,9,0,29,32,3,6,3,0,30,32,5,20,0,0,31,28,1,0,0,
      0,31,29,1,0,0,0,31,30,1,0,0,0,32,3,1,0,0,0,33,42,5,18,0,0,34,42,5,
      22,0,0,35,36,5,4,0,0,36,37,3,18,9,0,37,38,5,2,0,0,38,42,1,0,0,0,39,
      42,3,8,4,0,40,42,3,0,0,0,41,33,1,0,0,0,41,34,1,0,0,0,41,35,1,0,0,0,
      41,39,1,0,0,0,41,40,1,0,0,0,42,5,1,0,0,0,43,44,7,0,0,0,44,7,1,0,0,
      0,45,46,7,1,0,0,46,47,5,4,0,0,47,48,3,18,9,0,48,49,5,2,0,0,49,9,1,
      0,0,0,50,52,3,20,10,0,51,50,1,0,0,0,52,53,1,0,0,0,53,51,1,0,0,0,53,
      54,1,0,0,0,54,55,1,0,0,0,55,56,5,0,0,1,56,11,1,0,0,0,57,58,5,17,0,
      0,58,59,3,2,1,0,59,60,5,15,0,0,60,13,1,0,0,0,61,62,3,2,1,0,62,63,5,
      15,0,0,63,15,1,0,0,0,64,65,5,16,0,0,65,66,5,4,0,0,66,67,7,2,0,0,67,
      68,5,2,0,0,68,69,5,15,0,0,69,17,1,0,0,0,70,73,3,4,2,0,71,72,5,19,0,
      0,72,74,3,4,2,0,73,71,1,0,0,0,73,74,1,0,0,0,74,19,1,0,0,0,75,79,3,
      16,8,0,76,79,3,14,7,0,77,79,3,12,6,0,78,75,1,0,0,0,78,76,1,0,0,0,78,
      77,1,0,0,0,79,21,1,0,0,0,5,31,41,53,73,78
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class StringLengthExpressionContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor3Parser.TOKEN_Identifier, 0);
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

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor3Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor3Parser.TOKEN_StringLiteral, 0);
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
  TerminalNode? Identifier() => getToken(CFloor3Parser.TOKEN_Identifier, 0);
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
  TerminalNode? Type() => getToken(CFloor3Parser.TOKEN_Type, 0);
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
  TerminalNode? Identifier() => getToken(CFloor3Parser.TOKEN_Identifier, 0);
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

