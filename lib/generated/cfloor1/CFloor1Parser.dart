// Generated from grammars/CFloor1.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor1Listener.dart';
import 'CFloor1BaseListener.dart';
const int RULE_program = 0, RULE_statement = 1, RULE_declAssignStatement = 2, 
          RULE_assignStatement = 3, RULE_writeStatement = 4, RULE_primitive = 5, 
          RULE_type = 6, RULE_assignment = 7, RULE_expression = 8, RULE_mathExpression = 9, 
          RULE_mathOperand = 10, RULE_variableAccessor = 11, RULE_readFunctionExpression = 12;
class CFloor1Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_MathOperatorPrioMult = 8, 
                   TOKEN_MathOperatorPrioAdd = 9, TOKEN_StringLiteral = 10, 
                   TOKEN_WS = 11, TOKEN_Number = 12, TOKEN_Identifier = 13;

  @override
  final List<String> ruleNames = [
    'program', 'statement', 'declAssignStatement', 'assignStatement', 'writeStatement', 
    'primitive', 'type', 'assignment', 'expression', 'mathExpression', 'mathOperand', 
    'variableAccessor', 'readFunctionExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "';'", "'write'", "'('", "')'", "'int'", "'='", "'read_int()'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, "MathOperatorPrioMult", 
      "MathOperatorPrioAdd", "StringLiteral", "WS", "Number", "Identifier"
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
      state = 27; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 26;
        statement();
        state = 29; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8228) != 0));
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

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 2, RULE_statement);
    try {
      state = 36;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 1);
        state = 33;
        declAssignStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 34;
        assignStatement();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 35;
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
    enterRule(_localctx, 4, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 38;
      type();
      state = 39;
      assignment();
      state = 40;
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
    enterRule(_localctx, 6, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 42;
      assignment();
      state = 43;
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
    enterRule(_localctx, 8, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 45;
      match(TOKEN_T__1);
      state = 46;
      match(TOKEN_T__2);
      state = 50;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 47;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 48;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 49;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 52;
      match(TOKEN_T__3);
      state = 53;
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

  PrimitiveContext primitive() {
    dynamic _localctx = PrimitiveContext(context, state);
    enterRule(_localctx, 10, RULE_primitive);
    try {
      enterOuterAlt(_localctx, 1);
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 12, RULE_type);
    try {
      enterOuterAlt(_localctx, 1);
      state = 57;
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
    enterRule(_localctx, 14, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 59;
      match(TOKEN_Identifier);
      state = 60;
      match(TOKEN_T__5);
      state = 61;
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
    enterRule(_localctx, 16, RULE_expression);
    try {
      state = 65;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__2:
      case TOKEN_Number:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 1);
        state = 63;
        mathExpression(0);
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 2);
        state = 64;
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
    var _startState = 18;
    enterRecursionRule(_localctx, 18, RULE_mathExpression, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 73;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__2:
        state = 68;
        match(TOKEN_T__2);
        state = 69;
        mathExpression(0);
        state = 70;
        match(TOKEN_T__3);
        break;
      case TOKEN_Number:
      case TOKEN_Identifier:
        state = 72;
        mathOperand();
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 83;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 81;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 5, context)) {
          case 1:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 75;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 76;
            match(TOKEN_MathOperatorPrioMult);
            state = 77;
            mathExpression(4);
            break;
          case 2:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 78;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 79;
            match(TOKEN_MathOperatorPrioAdd);
            state = 80;
            mathExpression(3);
            break;
          } 
        }
        state = 85;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 20, RULE_mathOperand);
    try {
      state = 88;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 86;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 87;
        variableAccessor();
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 22, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 90;
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

  ReadFunctionExpressionContext readFunctionExpression() {
    dynamic _localctx = ReadFunctionExpressionContext(context, state);
    enterRule(_localctx, 24, RULE_readFunctionExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 92;
      match(TOKEN_T__6);
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
    case 9:
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
      4,1,13,95,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,1,0,4,0,28,8,
      0,11,0,12,0,29,1,0,1,0,1,1,1,1,1,1,3,1,37,8,1,1,2,1,2,1,2,1,2,1,3,
      1,3,1,3,1,4,1,4,1,4,1,4,1,4,3,4,51,8,4,1,4,1,4,1,4,1,5,1,5,1,6,1,6,
      1,7,1,7,1,7,1,7,1,8,1,8,3,8,66,8,8,1,9,1,9,1,9,1,9,1,9,1,9,3,9,74,
      8,9,1,9,1,9,1,9,1,9,1,9,1,9,5,9,82,8,9,10,9,12,9,85,9,9,1,10,1,10,
      3,10,89,8,10,1,11,1,11,1,12,1,12,1,12,0,1,18,13,0,2,4,6,8,10,12,14,
      16,18,20,22,24,0,0,91,0,27,1,0,0,0,2,36,1,0,0,0,4,38,1,0,0,0,6,42,
      1,0,0,0,8,45,1,0,0,0,10,55,1,0,0,0,12,57,1,0,0,0,14,59,1,0,0,0,16,
      65,1,0,0,0,18,73,1,0,0,0,20,88,1,0,0,0,22,90,1,0,0,0,24,92,1,0,0,0,
      26,28,3,2,1,0,27,26,1,0,0,0,28,29,1,0,0,0,29,27,1,0,0,0,29,30,1,0,
      0,0,30,31,1,0,0,0,31,32,5,0,0,1,32,1,1,0,0,0,33,37,3,4,2,0,34,37,3,
      6,3,0,35,37,3,8,4,0,36,33,1,0,0,0,36,34,1,0,0,0,36,35,1,0,0,0,37,3,
      1,0,0,0,38,39,3,12,6,0,39,40,3,14,7,0,40,41,5,1,0,0,41,5,1,0,0,0,42,
      43,3,14,7,0,43,44,5,1,0,0,44,7,1,0,0,0,45,46,5,2,0,0,46,50,5,3,0,0,
      47,51,3,22,11,0,48,51,5,12,0,0,49,51,5,10,0,0,50,47,1,0,0,0,50,48,
      1,0,0,0,50,49,1,0,0,0,51,52,1,0,0,0,52,53,5,4,0,0,53,54,5,1,0,0,54,
      9,1,0,0,0,55,56,5,5,0,0,56,11,1,0,0,0,57,58,3,10,5,0,58,13,1,0,0,0,
      59,60,5,13,0,0,60,61,5,6,0,0,61,62,3,16,8,0,62,15,1,0,0,0,63,66,3,
      18,9,0,64,66,3,24,12,0,65,63,1,0,0,0,65,64,1,0,0,0,66,17,1,0,0,0,67,
      68,6,9,-1,0,68,69,5,3,0,0,69,70,3,18,9,0,70,71,5,4,0,0,71,74,1,0,0,
      0,72,74,3,20,10,0,73,67,1,0,0,0,73,72,1,0,0,0,74,83,1,0,0,0,75,76,
      10,3,0,0,76,77,5,8,0,0,77,82,3,18,9,4,78,79,10,2,0,0,79,80,5,9,0,0,
      80,82,3,18,9,3,81,75,1,0,0,0,81,78,1,0,0,0,82,85,1,0,0,0,83,81,1,0,
      0,0,83,84,1,0,0,0,84,19,1,0,0,0,85,83,1,0,0,0,86,89,5,12,0,0,87,89,
      3,22,11,0,88,86,1,0,0,0,88,87,1,0,0,0,89,21,1,0,0,0,90,91,5,13,0,0,
      91,23,1,0,0,0,92,93,5,7,0,0,93,25,1,0,0,0,8,29,36,50,65,73,81,83,88
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

class StatementContext extends ParserRuleContext {
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
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
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class PrimitiveContext extends ParserRuleContext {
  PrimitiveContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primitive;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterPrimitive(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitPrimitive(this);
  }
}

class TypeContext extends ParserRuleContext {
  PrimitiveContext? primitive() => getRuleContext<PrimitiveContext>(0);
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

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor1Parser.TOKEN_Identifier, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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

class ExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitExpression(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathExpressionContext> mathExpressions() => getRuleContexts<MathExpressionContext>();
  MathExpressionContext? mathExpression(int i) => getRuleContext<MathExpressionContext>(i);
  MathOperandContext? mathOperand() => getRuleContext<MathOperandContext>(0);
  TerminalNode? MathOperatorPrioMult() => getToken(CFloor1Parser.TOKEN_MathOperatorPrioMult, 0);
  TerminalNode? MathOperatorPrioAdd() => getToken(CFloor1Parser.TOKEN_MathOperatorPrioAdd, 0);
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

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor1Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor1Parser.TOKEN_Identifier, 0);
  VariableAccessorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableAccessor;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.enterVariableAccessor(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitVariableAccessor(this);
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

