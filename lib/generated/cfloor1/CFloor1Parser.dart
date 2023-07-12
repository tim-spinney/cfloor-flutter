// Generated from grammars/CFloor1.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor1Listener.dart';
import 'CFloor1BaseListener.dart';
const int RULE_mathOperand = 0, RULE_readFunctionCall = 1, RULE_program = 2, 
          RULE_declAssignStatement = 3, RULE_assignStatement = 4, RULE_writeStatement = 5, 
          RULE_mathExpression = 6, RULE_assignment = 7, RULE_statement = 8;
class CFloor1Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_Number = 7, TOKEN_Type = 8, 
                   TOKEN_MathOperator = 9, TOKEN_Identifier = 10, TOKEN_StringLiteral = 11, 
                   TOKEN_WS = 12;

  @override
  final List<String> ruleNames = [
    'mathOperand', 'readFunctionCall', 'program', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression', 'assignment', 
    'statement'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'readInt()'", "';'", "'write'", "'='", null, 
      "'int'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, "Number", "Type", "MathOperator", 
      "Identifier", "StringLiteral", "WS"
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 0, RULE_mathOperand);
    try {
      state = 24;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 18;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 19;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 20;
        match(TOKEN_T__0);
        state = 21;
        mathExpression();
        state = 22;
        match(TOKEN_T__1);
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

  ReadFunctionCallContext readFunctionCall() {
    dynamic _localctx = ReadFunctionCallContext(context, state);
    enterRule(_localctx, 2, RULE_readFunctionCall);
    try {
      enterOuterAlt(_localctx, 1);
      state = 26;
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 4, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 29; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 28;
        statement();
        state = 31; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1312) != 0));
      state = 33;
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
    enterRule(_localctx, 6, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 35;
      match(TOKEN_Type);
      state = 36;
      assignment();
      state = 37;
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

  AssignStatementContext assignStatement() {
    dynamic _localctx = AssignStatementContext(context, state);
    enterRule(_localctx, 8, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 39;
      assignment();
      state = 40;
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

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 10, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 42;
      match(TOKEN_T__4);
      state = 43;
      match(TOKEN_T__0);
      state = 44;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3200) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 45;
      match(TOKEN_T__1);
      state = 46;
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 12, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 48;
      mathOperand();
      state = 51;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 49;
        match(TOKEN_MathOperator);
        state = 50;
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
    enterRule(_localctx, 14, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 53;
      match(TOKEN_Identifier);
      state = 54;
      match(TOKEN_T__5);
      state = 57;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
      case TOKEN_Number:
      case TOKEN_Identifier:
        state = 55;
        mathExpression();
        break;
      case TOKEN_T__2:
        state = 56;
        readFunctionCall();
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
    enterRule(_localctx, 16, RULE_statement);
    try {
      state = 62;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 1);
        state = 59;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 60;
        assignStatement();
        break;
      case TOKEN_Type:
        enterOuterAlt(_localctx, 3);
        state = 61;
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
      4,1,12,65,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,1,0,1,0,1,0,1,0,1,0,1,0,3,0,25,8,0,1,1,1,1,1,2,4,2,
      30,8,2,11,2,12,2,31,1,2,1,2,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,5,1,5,1,
      5,1,5,1,5,1,5,1,6,1,6,1,6,3,6,52,8,6,1,7,1,7,1,7,1,7,3,7,58,8,7,1,
      8,1,8,1,8,3,8,63,8,8,1,8,0,0,9,0,2,4,6,8,10,12,14,16,0,1,2,0,7,7,10,
      11,62,0,24,1,0,0,0,2,26,1,0,0,0,4,29,1,0,0,0,6,35,1,0,0,0,8,39,1,0,
      0,0,10,42,1,0,0,0,12,48,1,0,0,0,14,53,1,0,0,0,16,62,1,0,0,0,18,25,
      5,7,0,0,19,25,5,10,0,0,20,21,5,1,0,0,21,22,3,12,6,0,22,23,5,2,0,0,
      23,25,1,0,0,0,24,18,1,0,0,0,24,19,1,0,0,0,24,20,1,0,0,0,25,1,1,0,0,
      0,26,27,5,3,0,0,27,3,1,0,0,0,28,30,3,16,8,0,29,28,1,0,0,0,30,31,1,
      0,0,0,31,29,1,0,0,0,31,32,1,0,0,0,32,33,1,0,0,0,33,34,5,0,0,1,34,5,
      1,0,0,0,35,36,5,8,0,0,36,37,3,14,7,0,37,38,5,4,0,0,38,7,1,0,0,0,39,
      40,3,14,7,0,40,41,5,4,0,0,41,9,1,0,0,0,42,43,5,5,0,0,43,44,5,1,0,0,
      44,45,7,0,0,0,45,46,5,2,0,0,46,47,5,4,0,0,47,11,1,0,0,0,48,51,3,0,
      0,0,49,50,5,9,0,0,50,52,3,0,0,0,51,49,1,0,0,0,51,52,1,0,0,0,52,13,
      1,0,0,0,53,54,5,10,0,0,54,57,5,6,0,0,55,58,3,12,6,0,56,58,3,2,1,0,
      57,55,1,0,0,0,57,56,1,0,0,0,58,15,1,0,0,0,59,63,3,10,5,0,60,63,3,8,
      4,0,61,63,3,6,3,0,62,59,1,0,0,0,62,60,1,0,0,0,62,61,1,0,0,0,63,17,
      1,0,0,0,5,24,31,51,57,62
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
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

class ReadFunctionCallContext extends ParserRuleContext {
  ReadFunctionCallContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readFunctionCall;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterReadFunctionCall(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitReadFunctionCall(this);
  }
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
  ReadFunctionCallContext? readFunctionCall() => getRuleContext<ReadFunctionCallContext>(0);
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

