// Generated from grammars/CFloor1.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor1Listener.dart';
import 'CFloor1BaseListener.dart';
const int RULE_type = 0, RULE_program = 1, RULE_declAssignStatement = 2, 
          RULE_assignStatement = 3, RULE_writeStatement = 4, RULE_variableAccessor = 5, 
          RULE_mathOperand = 6, RULE_mathExpression = 7, RULE_expression = 8, 
          RULE_assignment = 9, RULE_statement = 10, RULE_readFunctionExpression = 11;
class CFloor1Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_MathOperator = 8, 
                   TOKEN_StringLiteral = 9, TOKEN_WS = 10, TOKEN_Number = 11, 
                   TOKEN_Identifier = 12;

  @override
  final List<String> ruleNames = [
    'type', 'program', 'declAssignStatement', 'assignStatement', 'writeStatement', 
    'variableAccessor', 'mathOperand', 'mathExpression', 'expression', 'assignment', 
    'statement', 'readFunctionExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'int'", "';'", "'write'", "'('", "')'", "'='", "'read_int()'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, "MathOperator", "StringLiteral", 
      "WS", "Number", "Identifier"
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 0, RULE_type);
    try {
      enterOuterAlt(_localctx, 1);
      state = 24;
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 2, RULE_program);
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
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4106) != 0));
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 4, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 33;
      type();
      state = 34;
      assignment();
      state = 35;
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

  AssignStatementContext assignStatement() {
    dynamic _localctx = AssignStatementContext(context, state);
    enterRule(_localctx, 6, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 37;
      assignment();
      state = 38;
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

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 8, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 40;
      match(TOKEN_T__2);
      state = 41;
      match(TOKEN_T__3);
      state = 45;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 42;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 43;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 44;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 47;
      match(TOKEN_T__4);
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 10, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 50;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 12, RULE_mathOperand);
    try {
      state = 58;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 52;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 53;
        variableAccessor();
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 3);
        state = 54;
        match(TOKEN_T__3);
        state = 55;
        mathExpression();
        state = 56;
        match(TOKEN_T__4);
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
    enterRule(_localctx, 14, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 60;
      mathOperand();
      state = 63;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 61;
        match(TOKEN_MathOperator);
        state = 62;
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

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 16, RULE_expression);
    try {
      state = 67;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__3:
      case TOKEN_Number:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 1);
        state = 65;
        mathExpression();
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 2);
        state = 66;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 18, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 69;
      match(TOKEN_Identifier);
      state = 70;
      match(TOKEN_T__5);
      state = 71;
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

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 20, RULE_statement);
    try {
      state = 76;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 1);
        state = 73;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 74;
        assignStatement();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 75;
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

  ReadFunctionExpressionContext readFunctionExpression() {
    dynamic _localctx = ReadFunctionExpressionContext(context, state);
    enterRule(_localctx, 22, RULE_readFunctionExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 78;
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

  static const List<int> _serializedATN = [
      4,1,12,81,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,1,0,1,0,1,1,4,1,28,8,1,
      11,1,12,1,29,1,1,1,1,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,
      4,3,4,46,8,4,1,4,1,4,1,4,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,6,3,6,59,8,
      6,1,7,1,7,1,7,3,7,64,8,7,1,8,1,8,3,8,68,8,8,1,9,1,9,1,9,1,9,1,10,1,
      10,1,10,3,10,77,8,10,1,11,1,11,1,11,0,0,12,0,2,4,6,8,10,12,14,16,18,
      20,22,0,0,77,0,24,1,0,0,0,2,27,1,0,0,0,4,33,1,0,0,0,6,37,1,0,0,0,8,
      40,1,0,0,0,10,50,1,0,0,0,12,58,1,0,0,0,14,60,1,0,0,0,16,67,1,0,0,0,
      18,69,1,0,0,0,20,76,1,0,0,0,22,78,1,0,0,0,24,25,5,1,0,0,25,1,1,0,0,
      0,26,28,3,20,10,0,27,26,1,0,0,0,28,29,1,0,0,0,29,27,1,0,0,0,29,30,
      1,0,0,0,30,31,1,0,0,0,31,32,5,0,0,1,32,3,1,0,0,0,33,34,3,0,0,0,34,
      35,3,18,9,0,35,36,5,2,0,0,36,5,1,0,0,0,37,38,3,18,9,0,38,39,5,2,0,
      0,39,7,1,0,0,0,40,41,5,3,0,0,41,45,5,4,0,0,42,46,3,10,5,0,43,46,5,
      11,0,0,44,46,5,9,0,0,45,42,1,0,0,0,45,43,1,0,0,0,45,44,1,0,0,0,46,
      47,1,0,0,0,47,48,5,5,0,0,48,49,5,2,0,0,49,9,1,0,0,0,50,51,5,12,0,0,
      51,11,1,0,0,0,52,59,5,11,0,0,53,59,3,10,5,0,54,55,5,4,0,0,55,56,3,
      14,7,0,56,57,5,5,0,0,57,59,1,0,0,0,58,52,1,0,0,0,58,53,1,0,0,0,58,
      54,1,0,0,0,59,13,1,0,0,0,60,63,3,12,6,0,61,62,5,8,0,0,62,64,3,12,6,
      0,63,61,1,0,0,0,63,64,1,0,0,0,64,15,1,0,0,0,65,68,3,14,7,0,66,68,3,
      22,11,0,67,65,1,0,0,0,67,66,1,0,0,0,68,17,1,0,0,0,69,70,5,12,0,0,70,
      71,5,6,0,0,71,72,3,16,8,0,72,19,1,0,0,0,73,77,3,8,4,0,74,77,3,6,3,
      0,75,77,3,4,2,0,76,73,1,0,0,0,76,74,1,0,0,0,76,75,1,0,0,0,77,21,1,
      0,0,0,78,79,5,7,0,0,79,23,1,0,0,0,6,29,45,58,63,67,76
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
    if (listener is CFloor1Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor1Listener) listener.exitType(this);
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

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor1Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

