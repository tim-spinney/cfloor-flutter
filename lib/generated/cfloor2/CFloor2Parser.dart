// Generated from CFloor2.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor2Listener.dart';
import 'CFloor2BaseListener.dart';
const int RULE_program = 0, RULE_mathOperand = 1, RULE_mathExpression = 2, 
          RULE_readRealExpression = 3, RULE_readIntExpression = 4, RULE_mathFunctionExpression = 5, 
          RULE_readExpression = 6, RULE_assignment = 7, RULE_assignStatement = 8, 
          RULE_type = 9, RULE_declAssignStatement = 10, RULE_writeStatement = 11, 
          RULE_statement = 12;
class CFloor2Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_MathOperator = 11, 
                   TOKEN_RealType = 12, TOKEN_IntType = 13, TOKEN_Identifier = 14, 
                   TOKEN_StringLiteral = 15, TOKEN_WS = 16, TOKEN_Number = 17;

  @override
  final List<String> ruleNames = [
    'program', 'mathOperand', 'mathExpression', 'readRealExpression', 'readIntExpression', 
    'mathFunctionExpression', 'readExpression', 'assignment', 'assignStatement', 
    'type', 'declAssignStatement', 'writeStatement', 'statement'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'readReal()'", "'readInt()'", "'floor'", "'ceil'", 
      "'round'", "'='", "';'", "'write'", null, "'real'", "'int'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      "MathOperator", "RealType", "IntType", "Identifier", "StringLiteral", 
      "WS", "Number"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'CFloor2.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  CFloor2Parser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 0, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 27; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 26;
        statement();
        state = 29; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 29696) != 0));
      state = 31;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 2, RULE_mathOperand);
    try {
      state = 40;
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
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 35;
        match(TOKEN_T__0);
        state = 36;
        mathExpression();
        state = 37;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 4);
        state = 39;
        mathFunctionExpression();
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 4, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 42;
      mathOperand();
      state = 45;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 43;
        match(TOKEN_MathOperator);
        state = 44;
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

  ReadRealExpressionContext readRealExpression() {
    dynamic _localctx = ReadRealExpressionContext(context, state);
    enterRule(_localctx, 6, RULE_readRealExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 47;
      match(TOKEN_T__2);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ReadIntExpressionContext readIntExpression() {
    dynamic _localctx = ReadIntExpressionContext(context, state);
    enterRule(_localctx, 8, RULE_readIntExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 49;
      match(TOKEN_T__3);
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
    enterRule(_localctx, 10, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 51;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 224) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 52;
      match(TOKEN_T__0);
      state = 53;
      mathExpression();
      state = 54;
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

  ReadExpressionContext readExpression() {
    dynamic _localctx = ReadExpressionContext(context, state);
    enterRule(_localctx, 12, RULE_readExpression);
    try {
      state = 58;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 1);
        state = 56;
        readRealExpression();
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 2);
        state = 57;
        readIntExpression();
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
    enterRule(_localctx, 14, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 60;
      match(TOKEN_Identifier);
      state = 61;
      match(TOKEN_T__7);
      state = 64;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_Identifier:
      case TOKEN_Number:
        state = 62;
        mathExpression();
        break;
      case TOKEN_T__2:
      case TOKEN_T__3:
        state = 63;
        readExpression();
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

  AssignStatementContext assignStatement() {
    dynamic _localctx = AssignStatementContext(context, state);
    enterRule(_localctx, 16, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 66;
      assignment();
      state = 67;
      match(TOKEN_T__8);
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
    enterRule(_localctx, 18, RULE_type);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 69;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_RealType || _la == TOKEN_IntType)) {
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 20, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 71;
      type();
      state = 72;
      assignment();
      state = 73;
      match(TOKEN_T__8);
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
    enterRule(_localctx, 22, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 75;
      match(TOKEN_T__9);
      state = 76;
      match(TOKEN_T__0);
      state = 77;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 180224) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 78;
      match(TOKEN_T__1);
      state = 79;
      match(TOKEN_T__8);
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
    enterRule(_localctx, 24, RULE_statement);
    try {
      state = 84;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 1);
        state = 81;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 82;
        assignStatement();
        break;
      case TOKEN_RealType:
      case TOKEN_IntType:
        enterOuterAlt(_localctx, 3);
        state = 83;
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
      4,1,17,87,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,1,0,4,0,28,8,
      0,11,0,12,0,29,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,41,8,1,1,2,
      1,2,1,2,3,2,46,8,2,1,3,1,3,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,6,1,6,3,6,
      59,8,6,1,7,1,7,1,7,1,7,3,7,65,8,7,1,8,1,8,1,8,1,9,1,9,1,10,1,10,1,
      10,1,10,1,11,1,11,1,11,1,11,1,11,1,11,1,12,1,12,1,12,3,12,85,8,12,
      1,12,0,0,13,0,2,4,6,8,10,12,14,16,18,20,22,24,0,3,1,0,5,7,1,0,12,13,
      2,0,14,15,17,17,82,0,27,1,0,0,0,2,40,1,0,0,0,4,42,1,0,0,0,6,47,1,0,
      0,0,8,49,1,0,0,0,10,51,1,0,0,0,12,58,1,0,0,0,14,60,1,0,0,0,16,66,1,
      0,0,0,18,69,1,0,0,0,20,71,1,0,0,0,22,75,1,0,0,0,24,84,1,0,0,0,26,28,
      3,24,12,0,27,26,1,0,0,0,28,29,1,0,0,0,29,27,1,0,0,0,29,30,1,0,0,0,
      30,31,1,0,0,0,31,32,5,0,0,1,32,1,1,0,0,0,33,41,5,17,0,0,34,41,5,14,
      0,0,35,36,5,1,0,0,36,37,3,4,2,0,37,38,5,2,0,0,38,41,1,0,0,0,39,41,
      3,10,5,0,40,33,1,0,0,0,40,34,1,0,0,0,40,35,1,0,0,0,40,39,1,0,0,0,41,
      3,1,0,0,0,42,45,3,2,1,0,43,44,5,11,0,0,44,46,3,2,1,0,45,43,1,0,0,0,
      45,46,1,0,0,0,46,5,1,0,0,0,47,48,5,3,0,0,48,7,1,0,0,0,49,50,5,4,0,
      0,50,9,1,0,0,0,51,52,7,0,0,0,52,53,5,1,0,0,53,54,3,4,2,0,54,55,5,2,
      0,0,55,11,1,0,0,0,56,59,3,6,3,0,57,59,3,8,4,0,58,56,1,0,0,0,58,57,
      1,0,0,0,59,13,1,0,0,0,60,61,5,14,0,0,61,64,5,8,0,0,62,65,3,4,2,0,63,
      65,3,12,6,0,64,62,1,0,0,0,64,63,1,0,0,0,65,15,1,0,0,0,66,67,3,14,7,
      0,67,68,5,9,0,0,68,17,1,0,0,0,69,70,7,1,0,0,70,19,1,0,0,0,71,72,3,
      18,9,0,72,73,3,14,7,0,73,74,5,9,0,0,74,21,1,0,0,0,75,76,5,10,0,0,76,
      77,5,1,0,0,77,78,7,2,0,0,78,79,5,2,0,0,79,80,5,9,0,0,80,23,1,0,0,0,
      81,85,3,22,11,0,82,85,3,16,8,0,83,85,3,20,10,0,84,81,1,0,0,0,84,82,
      1,0,0,0,84,83,1,0,0,0,85,25,1,0,0,0,6,29,40,45,58,64,84
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(CFloor2Parser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitProgram(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor2Parser.TOKEN_Number, 0);
  TerminalNode? Identifier() => getToken(CFloor2Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext? mathFunctionExpression() => getRuleContext<MathFunctionExpressionContext>(0);
  MathOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterMathOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitMathOperand(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? MathOperator() => getToken(CFloor2Parser.TOKEN_MathOperator, 0);
  MathExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitMathExpression(this);
  }
}

class ReadRealExpressionContext extends ParserRuleContext {
  ReadRealExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readRealExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterReadRealExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitReadRealExpression(this);
  }
}

class ReadIntExpressionContext extends ParserRuleContext {
  ReadIntExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readIntExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterReadIntExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitReadIntExpression(this);
  }
}

class MathFunctionExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterMathFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitMathFunctionExpression(this);
  }
}

class ReadExpressionContext extends ParserRuleContext {
  ReadRealExpressionContext? readRealExpression() => getRuleContext<ReadRealExpressionContext>(0);
  ReadIntExpressionContext? readIntExpression() => getRuleContext<ReadIntExpressionContext>(0);
  ReadExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterReadExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitReadExpression(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor2Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadExpressionContext? readExpression() => getRuleContext<ReadExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitAssignment(this);
  }
}

class AssignStatementContext extends ParserRuleContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitAssignStatement(this);
  }
}

class TypeContext extends ParserRuleContext {
  TerminalNode? RealType() => getToken(CFloor2Parser.TOKEN_RealType, 0);
  TerminalNode? IntType() => getToken(CFloor2Parser.TOKEN_IntType, 0);
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitType(this);
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
    if (listener is CFloor2Listener) listener.enterDeclAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitDeclAssignStatement(this);
  }
}

class WriteStatementContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor2Parser.TOKEN_Identifier, 0);
  TerminalNode? Number() => getToken(CFloor2Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor2Parser.TOKEN_StringLiteral, 0);
  WriteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_writeStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterWriteStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitWriteStatement(this);
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
    if (listener is CFloor2Listener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitStatement(this);
  }
}

