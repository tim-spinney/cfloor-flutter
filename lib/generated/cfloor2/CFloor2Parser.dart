// Generated from grammars/CFloor2.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor2Listener.dart';
import 'CFloor2BaseListener.dart';
const int RULE_primitive = 0, RULE_mathOperand = 1, RULE_mathFunctionExpression = 2, 
          RULE_readFunctionExpression = 3, RULE_program = 4, RULE_statement = 5, 
          RULE_declAssignStatement = 6, RULE_assignStatement = 7, RULE_writeStatement = 8, 
          RULE_type = 9, RULE_assignment = 10, RULE_expression = 11, RULE_mathExpression = 12, 
          RULE_variableAccessor = 13;
class CFloor2Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_Number = 17, TOKEN_MathOperatorPrioMult = 18, 
                   TOKEN_MathOperatorPrioAdd = 19, TOKEN_StringLiteral = 20, 
                   TOKEN_WS = 21, TOKEN_Identifier = 22;

  @override
  final List<String> ruleNames = [
    'primitive', 'mathOperand', 'mathFunctionExpression', 'readFunctionExpression', 
    'program', 'statement', 'declAssignStatement', 'assignStatement', 'writeStatement', 
    'type', 'assignment', 'expression', 'mathExpression', 'variableAccessor'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'int'", "'float'", "'floor'", "'ceil'", "'round'", "'sqrt'", 
      "'sin'", "'cos'", "'tan'", "'('", "')'", "'read_int()'", "'read_float()'", 
      "';'", "'write'", "'='"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, "Number", "MathOperatorPrioMult", 
      "MathOperatorPrioAdd", "StringLiteral", "WS", "Identifier"
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

  PrimitiveContext primitive() {
    dynamic _localctx = PrimitiveContext(context, state);
    enterRule(_localctx, 0, RULE_primitive);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 28;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__0 || _la == TOKEN_T__1)) {
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 2, RULE_mathOperand);
    try {
      state = 33;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 30;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 31;
        variableAccessor();
        break;
      case TOKEN_T__2:
      case TOKEN_T__3:
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
        enterOuterAlt(_localctx, 3);
        state = 32;
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

  MathFunctionExpressionContext mathFunctionExpression() {
    dynamic _localctx = MathFunctionExpressionContext(context, state);
    enterRule(_localctx, 4, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 35;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1016) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 36;
      match(TOKEN_T__9);
      state = 37;
      mathExpression(0);
      state = 38;
      match(TOKEN_T__10);
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
      state = 40;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_T__11 || _la == TOKEN_T__12)) {
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 8, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 43; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 42;
        statement();
        state = 45; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4227078) != 0));
      state = 47;
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
    enterRule(_localctx, 10, RULE_statement);
    try {
      state = 52;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 1);
        state = 49;
        declAssignStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 50;
        assignStatement();
        break;
      case TOKEN_T__14:
        enterOuterAlt(_localctx, 3);
        state = 51;
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
    enterRule(_localctx, 12, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 54;
      type();
      state = 55;
      assignment();
      state = 56;
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
    enterRule(_localctx, 14, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 58;
      assignment();
      state = 59;
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
    enterRule(_localctx, 16, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 61;
      match(TOKEN_T__14);
      state = 62;
      match(TOKEN_T__9);
      state = 66;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 63;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 64;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 65;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 68;
      match(TOKEN_T__10);
      state = 69;
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
    enterRule(_localctx, 18, RULE_type);
    try {
      enterOuterAlt(_localctx, 1);
      state = 71;
      primitive();
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
    enterRule(_localctx, 20, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 73;
      match(TOKEN_Identifier);
      state = 74;
      match(TOKEN_T__15);
      state = 75;
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

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 22, RULE_expression);
    try {
      state = 79;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__2:
      case TOKEN_T__3:
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_Number:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 1);
        state = 77;
        mathExpression(0);
        break;
      case TOKEN_T__11:
      case TOKEN_T__12:
        enterOuterAlt(_localctx, 2);
        state = 78;
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

  MathExpressionContext mathExpression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = MathExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 24;
    enterRecursionRule(_localctx, 24, RULE_mathExpression, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 87;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__9:
        state = 82;
        match(TOKEN_T__9);
        state = 83;
        mathExpression(0);
        state = 84;
        match(TOKEN_T__10);
        break;
      case TOKEN_T__2:
      case TOKEN_T__3:
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_Number:
      case TOKEN_Identifier:
        state = 86;
        mathOperand();
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 97;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 7, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 95;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 6, context)) {
          case 1:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 89;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 90;
            match(TOKEN_MathOperatorPrioMult);
            state = 91;
            mathExpression(4);
            break;
          case 2:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 92;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 93;
            match(TOKEN_MathOperatorPrioAdd);
            state = 94;
            mathExpression(3);
            break;
          } 
        }
        state = 99;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 7, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 26, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 100;
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

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 12:
      return _mathExpression_sempred(_localctx as MathExpressionContext?, predIndex);
    }
    return true;
  }
  bool _mathExpression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 3);
      case 1: return precpred(context, 2);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,22,103,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,1,
      0,1,0,1,1,1,1,1,1,3,1,34,8,1,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,4,4,4,44,
      8,4,11,4,12,4,45,1,4,1,4,1,5,1,5,1,5,3,5,53,8,5,1,6,1,6,1,6,1,6,1,
      7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,3,8,67,8,8,1,8,1,8,1,8,1,9,1,9,1,10,
      1,10,1,10,1,10,1,11,1,11,3,11,80,8,11,1,12,1,12,1,12,1,12,1,12,1,12,
      3,12,88,8,12,1,12,1,12,1,12,1,12,1,12,1,12,5,12,96,8,12,10,12,12,12,
      99,9,12,1,13,1,13,1,13,0,1,24,14,0,2,4,6,8,10,12,14,16,18,20,22,24,
      26,0,3,1,0,1,2,1,0,3,9,1,0,12,13,99,0,28,1,0,0,0,2,33,1,0,0,0,4,35,
      1,0,0,0,6,40,1,0,0,0,8,43,1,0,0,0,10,52,1,0,0,0,12,54,1,0,0,0,14,58,
      1,0,0,0,16,61,1,0,0,0,18,71,1,0,0,0,20,73,1,0,0,0,22,79,1,0,0,0,24,
      87,1,0,0,0,26,100,1,0,0,0,28,29,7,0,0,0,29,1,1,0,0,0,30,34,5,17,0,
      0,31,34,3,26,13,0,32,34,3,4,2,0,33,30,1,0,0,0,33,31,1,0,0,0,33,32,
      1,0,0,0,34,3,1,0,0,0,35,36,7,1,0,0,36,37,5,10,0,0,37,38,3,24,12,0,
      38,39,5,11,0,0,39,5,1,0,0,0,40,41,7,2,0,0,41,7,1,0,0,0,42,44,3,10,
      5,0,43,42,1,0,0,0,44,45,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,46,47,
      1,0,0,0,47,48,5,0,0,1,48,9,1,0,0,0,49,53,3,12,6,0,50,53,3,14,7,0,51,
      53,3,16,8,0,52,49,1,0,0,0,52,50,1,0,0,0,52,51,1,0,0,0,53,11,1,0,0,
      0,54,55,3,18,9,0,55,56,3,20,10,0,56,57,5,14,0,0,57,13,1,0,0,0,58,59,
      3,20,10,0,59,60,5,14,0,0,60,15,1,0,0,0,61,62,5,15,0,0,62,66,5,10,0,
      0,63,67,3,26,13,0,64,67,5,17,0,0,65,67,5,20,0,0,66,63,1,0,0,0,66,64,
      1,0,0,0,66,65,1,0,0,0,67,68,1,0,0,0,68,69,5,11,0,0,69,70,5,14,0,0,
      70,17,1,0,0,0,71,72,3,0,0,0,72,19,1,0,0,0,73,74,5,22,0,0,74,75,5,16,
      0,0,75,76,3,22,11,0,76,21,1,0,0,0,77,80,3,24,12,0,78,80,3,6,3,0,79,
      77,1,0,0,0,79,78,1,0,0,0,80,23,1,0,0,0,81,82,6,12,-1,0,82,83,5,10,
      0,0,83,84,3,24,12,0,84,85,5,11,0,0,85,88,1,0,0,0,86,88,3,2,1,0,87,
      81,1,0,0,0,87,86,1,0,0,0,88,97,1,0,0,0,89,90,10,3,0,0,90,91,5,18,0,
      0,91,96,3,24,12,4,92,93,10,2,0,0,93,94,5,19,0,0,94,96,3,24,12,3,95,
      89,1,0,0,0,95,92,1,0,0,0,96,99,1,0,0,0,97,95,1,0,0,0,97,98,1,0,0,0,
      98,25,1,0,0,0,99,97,1,0,0,0,100,101,5,22,0,0,101,27,1,0,0,0,8,33,45,
      52,66,79,87,95,97
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class PrimitiveContext extends ParserRuleContext {
  PrimitiveContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primitive;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterPrimitive(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitPrimitive(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor2Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class ReadFunctionExpressionContext extends ParserRuleContext {
  ReadFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterReadFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitReadFunctionExpression(this);
  }
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

class StatementContext extends ParserRuleContext {
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
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

class WriteStatementContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class TypeContext extends ParserRuleContext {
  PrimitiveContext? primitive() => getRuleContext<PrimitiveContext>(0);
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

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor2Parser.TOKEN_Identifier, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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

class ExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitExpression(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathExpressionContext> mathExpressions() => getRuleContexts<MathExpressionContext>();
  MathExpressionContext? mathExpression(int i) => getRuleContext<MathExpressionContext>(i);
  MathOperandContext? mathOperand() => getRuleContext<MathOperandContext>(0);
  TerminalNode? MathOperatorPrioMult() => getToken(CFloor2Parser.TOKEN_MathOperatorPrioMult, 0);
  TerminalNode? MathOperatorPrioAdd() => getToken(CFloor2Parser.TOKEN_MathOperatorPrioAdd, 0);
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

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor2Parser.TOKEN_Identifier, 0);
  VariableAccessorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableAccessor;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.enterVariableAccessor(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitVariableAccessor(this);
  }
}

