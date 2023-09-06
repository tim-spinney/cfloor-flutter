// Generated from grammars/CFloor2.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor2Listener.dart';
import 'CFloor2BaseListener.dart';
const int RULE_type = 0, RULE_mathOperand = 1, RULE_mathFunctionExpression = 2, 
          RULE_readFunctionExpression = 3, RULE_program = 4, RULE_declAssignStatement = 5, 
          RULE_assignStatement = 6, RULE_writeStatement = 7, RULE_variableAccessor = 8, 
          RULE_mathExpression = 9, RULE_assignment = 10, RULE_statement = 11;
class CFloor2Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_Number = 17, TOKEN_MathOperator = 18, 
                   TOKEN_StringLiteral = 19, TOKEN_WS = 20, TOKEN_Identifier = 21;

  @override
  final List<String> ruleNames = [
    'type', 'mathOperand', 'mathFunctionExpression', 'readFunctionExpression', 
    'program', 'declAssignStatement', 'assignStatement', 'writeStatement', 
    'variableAccessor', 'mathExpression', 'assignment', 'statement'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'int'", "'float'", "'('", "')'", "'floor'", "'ceil'", "'round'", 
      "'sqrt'", "'sin'", "'cos'", "'tan'", "'read_int()'", "'read_float()'", 
      "';'", "'write'", "'='"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, "Number", "MathOperator", "StringLiteral", 
      "WS", "Identifier"
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 0, RULE_type);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 24;
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
        state = 26;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 27;
        variableAccessor();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 28;
        match(TOKEN_T__2);
        state = 29;
        mathExpression();
        state = 30;
        match(TOKEN_T__3);
        break;
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
        enterOuterAlt(_localctx, 4);
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
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 4064) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 36;
      match(TOKEN_T__2);
      state = 37;
      mathExpression();
      state = 38;
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
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2129926) != 0));
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 10, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 49;
      type();
      state = 50;
      assignment();
      state = 51;
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
    enterRule(_localctx, 12, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 53;
      assignment();
      state = 54;
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
    enterRule(_localctx, 14, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 56;
      match(TOKEN_T__14);
      state = 57;
      match(TOKEN_T__2);
      state = 61;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 58;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 59;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 60;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 63;
      match(TOKEN_T__3);
      state = 64;
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 16, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 66;
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
    enterRule(_localctx, 18, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 68;
      mathOperand();
      state = 71;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 69;
        match(TOKEN_MathOperator);
        state = 70;
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
    enterRule(_localctx, 20, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 73;
      match(TOKEN_Identifier);
      state = 74;
      match(TOKEN_T__15);
      state = 77;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__2:
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
      case TOKEN_T__10:
      case TOKEN_Number:
      case TOKEN_Identifier:
        state = 75;
        mathExpression();
        break;
      case TOKEN_T__11:
      case TOKEN_T__12:
        state = 76;
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
    enterRule(_localctx, 22, RULE_statement);
    try {
      state = 82;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__14:
        enterOuterAlt(_localctx, 1);
        state = 79;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 80;
        assignStatement();
        break;
      case TOKEN_T__0:
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 81;
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
      4,1,21,85,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,1,0,1,0,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,3,1,34,8,1,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,4,4,4,44,8,
      4,11,4,12,4,45,1,4,1,4,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,7,1,7,1,7,1,7,
      1,7,3,7,62,8,7,1,7,1,7,1,7,1,8,1,8,1,9,1,9,1,9,3,9,72,8,9,1,10,1,10,
      1,10,1,10,3,10,78,8,10,1,11,1,11,1,11,3,11,83,8,11,1,11,0,0,12,0,2,
      4,6,8,10,12,14,16,18,20,22,0,3,1,0,1,2,1,0,5,11,1,0,12,13,82,0,24,
      1,0,0,0,2,33,1,0,0,0,4,35,1,0,0,0,6,40,1,0,0,0,8,43,1,0,0,0,10,49,
      1,0,0,0,12,53,1,0,0,0,14,56,1,0,0,0,16,66,1,0,0,0,18,68,1,0,0,0,20,
      73,1,0,0,0,22,82,1,0,0,0,24,25,7,0,0,0,25,1,1,0,0,0,26,34,5,17,0,0,
      27,34,3,16,8,0,28,29,5,3,0,0,29,30,3,18,9,0,30,31,5,4,0,0,31,34,1,
      0,0,0,32,34,3,4,2,0,33,26,1,0,0,0,33,27,1,0,0,0,33,28,1,0,0,0,33,32,
      1,0,0,0,34,3,1,0,0,0,35,36,7,1,0,0,36,37,5,3,0,0,37,38,3,18,9,0,38,
      39,5,4,0,0,39,5,1,0,0,0,40,41,7,2,0,0,41,7,1,0,0,0,42,44,3,22,11,0,
      43,42,1,0,0,0,44,45,1,0,0,0,45,43,1,0,0,0,45,46,1,0,0,0,46,47,1,0,
      0,0,47,48,5,0,0,1,48,9,1,0,0,0,49,50,3,0,0,0,50,51,3,20,10,0,51,52,
      5,14,0,0,52,11,1,0,0,0,53,54,3,20,10,0,54,55,5,14,0,0,55,13,1,0,0,
      0,56,57,5,15,0,0,57,61,5,3,0,0,58,62,3,16,8,0,59,62,5,17,0,0,60,62,
      5,19,0,0,61,58,1,0,0,0,61,59,1,0,0,0,61,60,1,0,0,0,62,63,1,0,0,0,63,
      64,5,4,0,0,64,65,5,14,0,0,65,15,1,0,0,0,66,67,5,21,0,0,67,17,1,0,0,
      0,68,71,3,2,1,0,69,70,5,18,0,0,70,72,3,2,1,0,71,69,1,0,0,0,71,72,1,
      0,0,0,72,19,1,0,0,0,73,74,5,21,0,0,74,77,5,16,0,0,75,78,3,18,9,0,76,
      78,3,6,3,0,77,75,1,0,0,0,77,76,1,0,0,0,78,21,1,0,0,0,79,83,3,14,7,
      0,80,83,3,12,6,0,81,83,3,10,5,0,82,79,1,0,0,0,82,80,1,0,0,0,82,81,
      1,0,0,0,83,23,1,0,0,0,6,33,45,61,71,77,82
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
    if (listener is CFloor2Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor2Listener) listener.exitType(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor2Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor2Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
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

