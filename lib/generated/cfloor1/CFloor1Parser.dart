// Generated from src/main/antlr/com.times6.cfloor1/CFloor1.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor1Listener.dart';
import 'CFloor1BaseListener.dart';
const int RULE_program = 0, RULE_mathOperand = 1, RULE_mathExpression = 2, 
          RULE_readRealExpression = 3, RULE_assignment = 4, RULE_assignStatement = 5, 
          RULE_type = 6, RULE_declAssignStatement = 7, RULE_writeStatement = 8, 
          RULE_statement = 9;
class CFloor1Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_MathOperator = 7, 
                   TOKEN_RealType = 8, TOKEN_Identifier = 9, TOKEN_StringLiteral = 10, 
                   TOKEN_WS = 11, TOKEN_Number = 12;

  @override
  final List<String> ruleNames = [
    'program', 'mathOperand', 'mathExpression', 'readRealExpression', 'assignment', 
    'assignStatement', 'type', 'declAssignStatement', 'writeStatement', 
    'statement'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'readReal()'", "'='", "';'", "'write'", null, 
      "'real'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, "MathOperator", "RealType", 
      "Identifier", "StringLiteral", "WS", "Number"
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
      state = 21; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 20;
        statement();
        state = 23; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 832) != 0));
      state = 25;
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
      state = 33;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 27;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 28;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 29;
        match(TOKEN_T__0);
        state = 30;
        mathExpression();
        state = 31;
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 4, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 35;
      mathOperand();
      state = 38;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 36;
        match(TOKEN_MathOperator);
        state = 37;
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
      state = 40;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 8, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 42;
      match(TOKEN_Identifier);
      state = 43;
      match(TOKEN_T__3);
      state = 46;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
      case TOKEN_Identifier:
      case TOKEN_Number:
        state = 44;
        mathExpression();
        break;
      case TOKEN_T__2:
        state = 45;
        readRealExpression();
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
    enterRule(_localctx, 10, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 48;
      assignment();
      state = 49;
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 12, RULE_type);
    try {
      enterOuterAlt(_localctx, 1);
      state = 51;
      match(TOKEN_RealType);
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
      state = 53;
      type();
      state = 54;
      assignment();
      state = 55;
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

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 16, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 57;
      match(TOKEN_T__5);
      state = 58;
      match(TOKEN_T__0);
      state = 59;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 5632) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 60;
      match(TOKEN_T__1);
      state = 61;
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

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 18, RULE_statement);
    try {
      state = 66;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__5:
        enterOuterAlt(_localctx, 1);
        state = 63;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 64;
        assignStatement();
        break;
      case TOKEN_RealType:
        enterOuterAlt(_localctx, 3);
        state = 65;
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
      4,1,12,69,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,1,0,4,0,22,8,0,11,0,12,0,23,1,0,1,0,1,1,1,
      1,1,1,1,1,1,1,1,1,3,1,34,8,1,1,2,1,2,1,2,3,2,39,8,2,1,3,1,3,1,4,1,
      4,1,4,1,4,3,4,47,8,4,1,5,1,5,1,5,1,6,1,6,1,7,1,7,1,7,1,7,1,8,1,8,1,
      8,1,8,1,8,1,8,1,9,1,9,1,9,3,9,67,8,9,1,9,0,0,10,0,2,4,6,8,10,12,14,
      16,18,0,1,2,0,9,10,12,12,65,0,21,1,0,0,0,2,33,1,0,0,0,4,35,1,0,0,0,
      6,40,1,0,0,0,8,42,1,0,0,0,10,48,1,0,0,0,12,51,1,0,0,0,14,53,1,0,0,
      0,16,57,1,0,0,0,18,66,1,0,0,0,20,22,3,18,9,0,21,20,1,0,0,0,22,23,1,
      0,0,0,23,21,1,0,0,0,23,24,1,0,0,0,24,25,1,0,0,0,25,26,5,0,0,1,26,1,
      1,0,0,0,27,34,5,12,0,0,28,34,5,9,0,0,29,30,5,1,0,0,30,31,3,4,2,0,31,
      32,5,2,0,0,32,34,1,0,0,0,33,27,1,0,0,0,33,28,1,0,0,0,33,29,1,0,0,0,
      34,3,1,0,0,0,35,38,3,2,1,0,36,37,5,7,0,0,37,39,3,2,1,0,38,36,1,0,0,
      0,38,39,1,0,0,0,39,5,1,0,0,0,40,41,5,3,0,0,41,7,1,0,0,0,42,43,5,9,
      0,0,43,46,5,4,0,0,44,47,3,4,2,0,45,47,3,6,3,0,46,44,1,0,0,0,46,45,
      1,0,0,0,47,9,1,0,0,0,48,49,3,8,4,0,49,50,5,5,0,0,50,11,1,0,0,0,51,
      52,5,8,0,0,52,13,1,0,0,0,53,54,3,12,6,0,54,55,3,8,4,0,55,56,5,5,0,
      0,56,15,1,0,0,0,57,58,5,6,0,0,58,59,5,1,0,0,59,60,7,0,0,0,60,61,5,
      2,0,0,61,62,5,5,0,0,62,17,1,0,0,0,63,67,3,16,8,0,64,67,3,10,5,0,65,
      67,3,14,7,0,66,63,1,0,0,0,66,64,1,0,0,0,66,65,1,0,0,0,67,19,1,0,0,
      0,5,23,33,38,46,66
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

class ReadRealExpressionContext extends ParserRuleContext {
  ReadRealExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readRealExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterReadRealExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitReadRealExpression(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor1Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadRealExpressionContext? readRealExpression() => getRuleContext<ReadRealExpressionContext>(0);
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

class TypeContext extends ParserRuleContext {
  TerminalNode? RealType() => getToken(CFloor1Parser.TOKEN_RealType, 0);
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitType(this);
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
    if (listener is CFloor1Listener) listener.enterDeclAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitDeclAssignStatement(this);
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

