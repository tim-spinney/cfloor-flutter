// Generated from grammars/CFloor1.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor1Listener.dart';
import 'CFloor1BaseListener.dart';
const int RULE_program = 0, RULE_declAssignStatement = 1, RULE_assignStatement = 2, 
          RULE_writeStatement = 3, RULE_mathExpression = 4, RULE_assignment = 5, 
          RULE_statement = 6, RULE_mathOperand = 7, RULE_readFunctionExpression = 8;
class CFloor1Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_MathOperator = 7, 
                   TOKEN_Identifier = 8, TOKEN_StringLiteral = 9, TOKEN_WS = 10, 
                   TOKEN_Number = 11, TOKEN_Type = 12;

  @override
  final List<String> ruleNames = [
    'program', 'declAssignStatement', 'assignStatement', 'writeStatement', 
    'mathExpression', 'assignment', 'statement', 'mathOperand', 'readFunctionExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "';'", "'write'", "'('", "')'", "'='", "'readInt()'", null, 
      null, null, null, null, "'int'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, "MathOperator", "Identifier", 
      "StringLiteral", "WS", "Number", "Type"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'CFloor1.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  CFloor1Parser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 0, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 19; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 18;
        statement();
        state = 21; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4356) != 0));
      state = 23;
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
    enterRule(_localctx, 2, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 25;
      match(TOKEN_Type);
      state = 26;
      assignment();
      state = 27;
      match(TOKEN_T__0);
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
    enterRule(_localctx, 4, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 29;
      assignment();
      state = 30;
      match(TOKEN_T__0);
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
    enterRule(_localctx, 6, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 32;
      match(TOKEN_T__1);
      state = 33;
      match(TOKEN_T__2);
      state = 34;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2816) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 35;
      match(TOKEN_T__3);
      state = 36;
      match(TOKEN_T__0);
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
    enterRule(_localctx, 8, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 38;
      mathOperand();
      state = 41;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 39;
        match(TOKEN_MathOperator);
        state = 40;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 10, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 43;
      match(TOKEN_Identifier);
      state = 44;
      match(TOKEN_T__4);
      state = 47;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__2:
      case TOKEN_Identifier:
      case TOKEN_Number:
        state = 45;
        mathExpression();
        break;
      case TOKEN_T__5:
        state = 46;
        readFunctionExpression();
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

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 12, RULE_statement);
    try {
      state = 52;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 1);
        state = 49;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 50;
        assignStatement();
        break;
      case TOKEN_Type:
        enterOuterAlt(_localctx, 3);
        state = 51;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 14, RULE_mathOperand);
    try {
      state = 60;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 54;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 55;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 56;
        match(TOKEN_T__2);
        state = 57;
        mathExpression();
        state = 58;
        match(TOKEN_T__3);
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
    enterRule(_localctx, 16, RULE_readFunctionExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 62;
      match(TOKEN_T__5);
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
      4,1,12,65,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,1,0,4,0,20,8,0,11,0,12,0,21,1,0,1,0,1,1,1,1,1,1,1,
      1,1,2,1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,4,1,4,1,4,3,4,42,8,4,1,5,1,
      5,1,5,1,5,3,5,48,8,5,1,6,1,6,1,6,3,6,53,8,6,1,7,1,7,1,7,1,7,1,7,1,
      7,3,7,61,8,7,1,8,1,8,1,8,0,0,9,0,2,4,6,8,10,12,14,16,0,1,2,0,8,9,11,
      11,62,0,19,1,0,0,0,2,25,1,0,0,0,4,29,1,0,0,0,6,32,1,0,0,0,8,38,1,0,
      0,0,10,43,1,0,0,0,12,52,1,0,0,0,14,60,1,0,0,0,16,62,1,0,0,0,18,20,
      3,12,6,0,19,18,1,0,0,0,20,21,1,0,0,0,21,19,1,0,0,0,21,22,1,0,0,0,22,
      23,1,0,0,0,23,24,5,0,0,1,24,1,1,0,0,0,25,26,5,12,0,0,26,27,3,10,5,
      0,27,28,5,1,0,0,28,3,1,0,0,0,29,30,3,10,5,0,30,31,5,1,0,0,31,5,1,0,
      0,0,32,33,5,2,0,0,33,34,5,3,0,0,34,35,7,0,0,0,35,36,5,4,0,0,36,37,
      5,1,0,0,37,7,1,0,0,0,38,41,3,14,7,0,39,40,5,7,0,0,40,42,3,14,7,0,41,
      39,1,0,0,0,41,42,1,0,0,0,42,9,1,0,0,0,43,44,5,8,0,0,44,47,5,5,0,0,
      45,48,3,8,4,0,46,48,3,16,8,0,47,45,1,0,0,0,47,46,1,0,0,0,48,11,1,0,
      0,0,49,53,3,6,3,0,50,53,3,4,2,0,51,53,3,2,1,0,52,49,1,0,0,0,52,50,
      1,0,0,0,52,51,1,0,0,0,53,13,1,0,0,0,54,61,5,11,0,0,55,61,5,8,0,0,56,
      57,5,3,0,0,57,58,3,8,4,0,58,59,5,4,0,0,59,61,1,0,0,0,60,54,1,0,0,0,
      60,55,1,0,0,0,60,56,1,0,0,0,61,15,1,0,0,0,62,63,5,6,0,0,63,17,1,0,
      0,0,5,21,41,47,52,60
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(CFloor1Parser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitProgram(this);
  }
}

class DeclAssignStatementContext extends ParserRuleContext {
  TerminalNode? Type() => getToken(CFloor1Parser.TOKEN_Type, 0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  DeclAssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declAssignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterDeclAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitDeclAssignStatement(this);
  }
}

class AssignStatementContext extends ParserRuleContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitAssignStatement(this);
  }
}

class WriteStatementContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor1Parser.TOKEN_Identifier, 0);
  TerminalNode? Number() => getToken(CFloor1Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor1Parser.TOKEN_StringLiteral, 0);
  WriteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_writeStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterWriteStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitWriteStatement(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? MathOperator() => getToken(CFloor1Parser.TOKEN_MathOperator, 0);
  MathExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitMathExpression(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor1Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitAssignment(this);
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
    if (listener is CFloor1Listener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitStatement(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor1Parser.TOKEN_Number, 0);
  TerminalNode? Identifier() => getToken(CFloor1Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterMathOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitMathOperand(this);
  }
}

class ReadFunctionExpressionContext extends ParserRuleContext {
  ReadFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterReadFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitReadFunctionExpression(this);
  }
}

