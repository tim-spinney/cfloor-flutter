// Generated from grammars/CFloor3.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor3Listener.dart';
import 'CFloor3BaseListener.dart';
const int RULE_expression = 0, RULE_primitive = 1, RULE_mathOperand = 2, 
          RULE_stringLengthExpression = 3, RULE_readFunctionExpression = 4, 
          RULE_mathFunctionExpression = 5, RULE_program = 6, RULE_statement = 7, 
          RULE_declAssignStatement = 8, RULE_assignStatement = 9, RULE_writeStatement = 10, 
          RULE_type = 11, RULE_assignment = 12, RULE_mathExpression = 13, 
          RULE_variableAccessor = 14;
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
                   TOKEN_T__15 = 16, TOKEN_T__16 = 17, TOKEN_T__17 = 18, 
                   TOKEN_T__18 = 19, TOKEN_Number = 20, TOKEN_MathOperatorPrioMult = 21, 
                   TOKEN_MathOperatorPrioAdd = 22, TOKEN_StringLiteral = 23, 
                   TOKEN_WS = 24, TOKEN_Identifier = 25;

  @override
  final List<String> ruleNames = [
    'expression', 'primitive', 'mathOperand', 'stringLengthExpression', 
    'readFunctionExpression', 'mathFunctionExpression', 'program', 'statement', 
    'declAssignStatement', 'assignStatement', 'writeStatement', 'type', 
    'assignment', 'mathExpression', 'variableAccessor'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'int'", "'float'", "'string'", "'length('", "')'", "'read_int()'", 
      "'read_float()'", "'read_string()'", "'floor'", "'ceil'", "'round'", 
      "'sqrt'", "'sin'", "'cos'", "'tan'", "'('", "';'", "'write'", "'='"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, "Number", "MathOperatorPrioMult", 
      "MathOperatorPrioAdd", "StringLiteral", "WS", "Identifier"
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
      state = 33;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__3:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_Number:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 1);
        state = 30;
        mathExpression(0);
        break;
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 2);
        state = 31;
        readFunctionExpression();
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 3);
        state = 32;
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

  PrimitiveContext primitive() {
    dynamic _localctx = PrimitiveContext(context, state);
    enterRule(_localctx, 2, RULE_primitive);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 35;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 4, RULE_mathOperand);
    try {
      state = 41;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 37;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 38;
        variableAccessor();
        break;
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
        enterOuterAlt(_localctx, 3);
        state = 39;
        mathFunctionExpression();
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 4);
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
    enterRule(_localctx, 6, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 43;
      match(TOKEN_T__3);
      state = 44;
      variableAccessor();
      state = 45;
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

  ReadFunctionExpressionContext readFunctionExpression() {
    dynamic _localctx = ReadFunctionExpressionContext(context, state);
    enterRule(_localctx, 8, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 47;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 448) != 0))) {
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
    enterRule(_localctx, 10, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 49;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 65024) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 50;
      match(TOKEN_T__15);
      state = 51;
      mathExpression(0);
      state = 52;
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
    enterRule(_localctx, 12, RULE_program);
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
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 33816590) != 0));
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
    enterRule(_localctx, 14, RULE_statement);
    try {
      state = 64;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
      case TOKEN_T__1:
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 1);
        state = 61;
        declAssignStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 62;
        assignStatement();
        break;
      case TOKEN_T__17:
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
    enterRule(_localctx, 16, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 66;
      type();
      state = 67;
      assignment();
      state = 68;
      match(TOKEN_T__16);
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
      state = 70;
      assignment();
      state = 71;
      match(TOKEN_T__16);
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
      state = 73;
      match(TOKEN_T__17);
      state = 74;
      match(TOKEN_T__15);
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
      match(TOKEN_T__4);
      state = 81;
      match(TOKEN_T__16);
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
    enterRule(_localctx, 22, RULE_type);
    try {
      enterOuterAlt(_localctx, 1);
      state = 83;
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
    enterRule(_localctx, 24, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 85;
      match(TOKEN_Identifier);
      state = 86;
      match(TOKEN_T__18);
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

  MathExpressionContext mathExpression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = MathExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 26;
    enterRecursionRule(_localctx, 26, RULE_mathExpression, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 95;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__15:
        state = 90;
        match(TOKEN_T__15);
        state = 91;
        mathExpression(0);
        state = 92;
        match(TOKEN_T__4);
        break;
      case TOKEN_T__3:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_Number:
      case TOKEN_Identifier:
        state = 94;
        mathOperand();
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 105;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 7, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 103;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 6, context)) {
          case 1:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 97;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 98;
            match(TOKEN_MathOperatorPrioMult);
            state = 99;
            mathExpression(4);
            break;
          case 2:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 100;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 101;
            match(TOKEN_MathOperatorPrioAdd);
            state = 102;
            mathExpression(3);
            break;
          } 
        }
        state = 107;
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
    enterRule(_localctx, 28, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 108;
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
    case 13:
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
      4,1,25,111,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,1,0,1,0,1,0,3,0,34,8,0,1,1,1,1,1,2,1,2,1,2,1,2,3,2,42,8,2,
      1,3,1,3,1,3,1,3,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,6,4,6,56,8,6,11,6,12,
      6,57,1,6,1,6,1,7,1,7,1,7,3,7,65,8,7,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,
      10,1,10,1,10,1,10,1,10,3,10,79,8,10,1,10,1,10,1,10,1,11,1,11,1,12,
      1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,13,3,13,96,8,13,1,13,1,13,
      1,13,1,13,1,13,1,13,5,13,104,8,13,10,13,12,13,107,9,13,1,14,1,14,1,
      14,0,1,26,15,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,0,3,1,0,1,3,1,
      0,6,8,1,0,9,15,108,0,33,1,0,0,0,2,35,1,0,0,0,4,41,1,0,0,0,6,43,1,0,
      0,0,8,47,1,0,0,0,10,49,1,0,0,0,12,55,1,0,0,0,14,64,1,0,0,0,16,66,1,
      0,0,0,18,70,1,0,0,0,20,73,1,0,0,0,22,83,1,0,0,0,24,85,1,0,0,0,26,95,
      1,0,0,0,28,108,1,0,0,0,30,34,3,26,13,0,31,34,3,8,4,0,32,34,5,23,0,
      0,33,30,1,0,0,0,33,31,1,0,0,0,33,32,1,0,0,0,34,1,1,0,0,0,35,36,7,0,
      0,0,36,3,1,0,0,0,37,42,5,20,0,0,38,42,3,28,14,0,39,42,3,10,5,0,40,
      42,3,6,3,0,41,37,1,0,0,0,41,38,1,0,0,0,41,39,1,0,0,0,41,40,1,0,0,0,
      42,5,1,0,0,0,43,44,5,4,0,0,44,45,3,28,14,0,45,46,5,5,0,0,46,7,1,0,
      0,0,47,48,7,1,0,0,48,9,1,0,0,0,49,50,7,2,0,0,50,51,5,16,0,0,51,52,
      3,26,13,0,52,53,5,5,0,0,53,11,1,0,0,0,54,56,3,14,7,0,55,54,1,0,0,0,
      56,57,1,0,0,0,57,55,1,0,0,0,57,58,1,0,0,0,58,59,1,0,0,0,59,60,5,0,
      0,1,60,13,1,0,0,0,61,65,3,16,8,0,62,65,3,18,9,0,63,65,3,20,10,0,64,
      61,1,0,0,0,64,62,1,0,0,0,64,63,1,0,0,0,65,15,1,0,0,0,66,67,3,22,11,
      0,67,68,3,24,12,0,68,69,5,17,0,0,69,17,1,0,0,0,70,71,3,24,12,0,71,
      72,5,17,0,0,72,19,1,0,0,0,73,74,5,18,0,0,74,78,5,16,0,0,75,79,3,28,
      14,0,76,79,5,20,0,0,77,79,5,23,0,0,78,75,1,0,0,0,78,76,1,0,0,0,78,
      77,1,0,0,0,79,80,1,0,0,0,80,81,5,5,0,0,81,82,5,17,0,0,82,21,1,0,0,
      0,83,84,3,2,1,0,84,23,1,0,0,0,85,86,5,25,0,0,86,87,5,19,0,0,87,88,
      3,0,0,0,88,25,1,0,0,0,89,90,6,13,-1,0,90,91,5,16,0,0,91,92,3,26,13,
      0,92,93,5,5,0,0,93,96,1,0,0,0,94,96,3,4,2,0,95,89,1,0,0,0,95,94,1,
      0,0,0,96,105,1,0,0,0,97,98,10,3,0,0,98,99,5,21,0,0,99,104,3,26,13,
      4,100,101,10,2,0,0,101,102,5,22,0,0,102,104,3,26,13,3,103,97,1,0,0,
      0,103,100,1,0,0,0,104,107,1,0,0,0,105,103,1,0,0,0,105,106,1,0,0,0,
      106,27,1,0,0,0,107,105,1,0,0,0,108,109,5,25,0,0,109,29,1,0,0,0,8,33,
      41,57,64,78,95,103,105
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

class PrimitiveContext extends ParserRuleContext {
  PrimitiveContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primitive;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.enterPrimitive(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor3Listener) listener.exitPrimitive(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor3Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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
  PrimitiveContext? primitive() => getRuleContext<PrimitiveContext>(0);
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
  List<MathExpressionContext> mathExpressions() => getRuleContexts<MathExpressionContext>();
  MathExpressionContext? mathExpression(int i) => getRuleContext<MathExpressionContext>(i);
  MathOperandContext? mathOperand() => getRuleContext<MathOperandContext>(0);
  TerminalNode? MathOperatorPrioMult() => getToken(CFloor3Parser.TOKEN_MathOperatorPrioMult, 0);
  TerminalNode? MathOperatorPrioAdd() => getToken(CFloor3Parser.TOKEN_MathOperatorPrioAdd, 0);
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

