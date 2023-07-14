// Generated from grammars/CFloor4.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor4Listener.dart';
import 'CFloor4BaseListener.dart';
const int RULE_booleanOperand = 0, RULE_booleanExpression = 1, RULE_assignment = 2, 
          RULE_stringLengthExpression = 3, RULE_mathOperand = 4, RULE_readFunctionExpression = 5, 
          RULE_mathFunctionExpression = 6, RULE_program = 7, RULE_declAssignStatement = 8, 
          RULE_assignStatement = 9, RULE_writeStatement = 10, RULE_mathExpression = 11, 
          RULE_statement = 12;
class CFloor4Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_BinaryBooleanOperator = 13, TOKEN_UnaryBooleanOperator = 14, 
                   TOKEN_BooleanLiteral = 15, TOKEN_Comparator = 16, TOKEN_Type = 17, 
                   TOKEN_Number = 18, TOKEN_MathOperator = 19, TOKEN_Identifier = 20, 
                   TOKEN_StringLiteral = 21, TOKEN_WS = 22;

  @override
  final List<String> ruleNames = [
    'booleanOperand', 'booleanExpression', 'assignment', 'stringLengthExpression', 
    'mathOperand', 'readFunctionExpression', 'mathFunctionExpression', 'program', 
    'declAssignStatement', 'assignStatement', 'writeStatement', 'mathExpression', 
    'statement'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'='", "'length('", "'readInt()'", "'readFloat()'", 
      "'readString()'", "'floor'", "'ceil'", "'round'", "';'", "'write'", 
      null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, "BinaryBooleanOperator", "UnaryBooleanOperator", "BooleanLiteral", 
      "Comparator", "Type", "Number", "MathOperator", "Identifier", "StringLiteral", 
      "WS"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'CFloor4.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  CFloor4Parser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  BooleanOperandContext booleanOperand() {
    dynamic _localctx = BooleanOperandContext(context, state);
    enterRule(_localctx, 0, RULE_booleanOperand);
    try {
      state = 32;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 26;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 27;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 28;
        match(TOKEN_T__0);
        state = 29;
        booleanExpression();
        state = 30;
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

  BooleanExpressionContext booleanExpression() {
    dynamic _localctx = BooleanExpressionContext(context, state);
    enterRule(_localctx, 2, RULE_booleanExpression);
    int _la;
    try {
      state = 45;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 34;
        match(TOKEN_UnaryBooleanOperator);
        state = 35;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 36;
        mathOperand();
        state = 37;
        match(TOKEN_Comparator);
        state = 38;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 40;
        booleanOperand();
        state = 43;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 41;
          match(TOKEN_BinaryBooleanOperator);
          state = 42;
          booleanOperand();
        }

        break;
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
    enterRule(_localctx, 4, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 47;
      match(TOKEN_Identifier);
      state = 48;
      match(TOKEN_T__2);
      state = 53;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        state = 49;
        mathExpression();
        break;
      case 2:
        state = 50;
        readFunctionExpression();
        break;
      case 3:
        state = 51;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        state = 52;
        booleanExpression();
        break;
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
      state = 55;
      match(TOKEN_T__3);
      state = 56;
      match(TOKEN_Identifier);
      state = 57;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 8, RULE_mathOperand);
    try {
      state = 67;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 59;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 60;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 61;
        match(TOKEN_T__0);
        state = 62;
        mathExpression();
        state = 63;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__7:
      case TOKEN_T__8:
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 4);
        state = 65;
        mathFunctionExpression();
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 5);
        state = 66;
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
    enterRule(_localctx, 10, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 69;
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
    enterRule(_localctx, 12, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 71;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1792) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 72;
      match(TOKEN_T__0);
      state = 73;
      mathExpression();
      state = 74;
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
    enterRule(_localctx, 14, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 77; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 76;
        statement();
        state = 79; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1183744) != 0));
      state = 81;
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
    enterRule(_localctx, 16, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 83;
      match(TOKEN_Type);
      state = 84;
      assignment();
      state = 85;
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

  AssignStatementContext assignStatement() {
    dynamic _localctx = AssignStatementContext(context, state);
    enterRule(_localctx, 18, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 87;
      assignment();
      state = 88;
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

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 20, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 90;
      match(TOKEN_T__11);
      state = 91;
      match(TOKEN_T__0);
      state = 92;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3407872) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 93;
      match(TOKEN_T__1);
      state = 94;
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 22, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 96;
      mathOperand();
      state = 99;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 97;
        match(TOKEN_MathOperator);
        state = 98;
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
    enterRule(_localctx, 24, RULE_statement);
    try {
      state = 104;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__11:
        enterOuterAlt(_localctx, 1);
        state = 101;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 102;
        assignStatement();
        break;
      case TOKEN_Type:
        enterOuterAlt(_localctx, 3);
        state = 103;
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
      4,1,22,107,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,1,0,1,0,1,0,
      1,0,1,0,1,0,3,0,33,8,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,44,
      8,1,3,1,46,8,1,1,2,1,2,1,2,1,2,1,2,1,2,3,2,54,8,2,1,3,1,3,1,3,1,3,
      1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,68,8,4,1,5,1,5,1,6,1,6,1,6,1,6,
      1,6,1,7,4,7,78,8,7,11,7,12,7,79,1,7,1,7,1,8,1,8,1,8,1,8,1,9,1,9,1,
      9,1,10,1,10,1,10,1,10,1,10,1,10,1,11,1,11,1,11,3,11,100,8,11,1,12,
      1,12,1,12,3,12,105,8,12,1,12,0,0,13,0,2,4,6,8,10,12,14,16,18,20,22,
      24,0,3,1,0,5,7,1,0,8,10,2,0,18,18,20,21,109,0,32,1,0,0,0,2,45,1,0,
      0,0,4,47,1,0,0,0,6,55,1,0,0,0,8,67,1,0,0,0,10,69,1,0,0,0,12,71,1,0,
      0,0,14,77,1,0,0,0,16,83,1,0,0,0,18,87,1,0,0,0,20,90,1,0,0,0,22,96,
      1,0,0,0,24,104,1,0,0,0,26,33,5,15,0,0,27,33,5,20,0,0,28,29,5,1,0,0,
      29,30,3,2,1,0,30,31,5,2,0,0,31,33,1,0,0,0,32,26,1,0,0,0,32,27,1,0,
      0,0,32,28,1,0,0,0,33,1,1,0,0,0,34,35,5,14,0,0,35,46,3,0,0,0,36,37,
      3,8,4,0,37,38,5,16,0,0,38,39,3,8,4,0,39,46,1,0,0,0,40,43,3,0,0,0,41,
      42,5,13,0,0,42,44,3,0,0,0,43,41,1,0,0,0,43,44,1,0,0,0,44,46,1,0,0,
      0,45,34,1,0,0,0,45,36,1,0,0,0,45,40,1,0,0,0,46,3,1,0,0,0,47,48,5,20,
      0,0,48,53,5,3,0,0,49,54,3,22,11,0,50,54,3,10,5,0,51,54,5,21,0,0,52,
      54,3,2,1,0,53,49,1,0,0,0,53,50,1,0,0,0,53,51,1,0,0,0,53,52,1,0,0,0,
      54,5,1,0,0,0,55,56,5,4,0,0,56,57,5,20,0,0,57,58,5,2,0,0,58,7,1,0,0,
      0,59,68,5,18,0,0,60,68,5,20,0,0,61,62,5,1,0,0,62,63,3,22,11,0,63,64,
      5,2,0,0,64,68,1,0,0,0,65,68,3,12,6,0,66,68,3,6,3,0,67,59,1,0,0,0,67,
      60,1,0,0,0,67,61,1,0,0,0,67,65,1,0,0,0,67,66,1,0,0,0,68,9,1,0,0,0,
      69,70,7,0,0,0,70,11,1,0,0,0,71,72,7,1,0,0,72,73,5,1,0,0,73,74,3,22,
      11,0,74,75,5,2,0,0,75,13,1,0,0,0,76,78,3,24,12,0,77,76,1,0,0,0,78,
      79,1,0,0,0,79,77,1,0,0,0,79,80,1,0,0,0,80,81,1,0,0,0,81,82,5,0,0,1,
      82,15,1,0,0,0,83,84,5,17,0,0,84,85,3,4,2,0,85,86,5,11,0,0,86,17,1,
      0,0,0,87,88,3,4,2,0,88,89,5,11,0,0,89,19,1,0,0,0,90,91,5,12,0,0,91,
      92,5,1,0,0,92,93,7,2,0,0,93,94,5,2,0,0,94,95,5,11,0,0,95,21,1,0,0,
      0,96,99,3,8,4,0,97,98,5,19,0,0,98,100,3,8,4,0,99,97,1,0,0,0,99,100,
      1,0,0,0,100,23,1,0,0,0,101,105,3,20,10,0,102,105,3,18,9,0,103,105,
      3,16,8,0,104,101,1,0,0,0,104,102,1,0,0,0,104,103,1,0,0,0,105,25,1,
      0,0,0,8,32,43,45,53,67,79,99,104
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class BooleanOperandContext extends ParserRuleContext {
  TerminalNode? BooleanLiteral() => getToken(CFloor4Parser.TOKEN_BooleanLiteral, 0);
  TerminalNode? Identifier() => getToken(CFloor4Parser.TOKEN_Identifier, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  BooleanOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_booleanOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterBooleanOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitBooleanOperand(this);
  }
}

class BooleanExpressionContext extends ParserRuleContext {
  TerminalNode? UnaryBooleanOperator() => getToken(CFloor4Parser.TOKEN_UnaryBooleanOperator, 0);
  List<BooleanOperandContext> booleanOperands() => getRuleContexts<BooleanOperandContext>();
  BooleanOperandContext? booleanOperand(int i) => getRuleContext<BooleanOperandContext>(i);
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? Comparator() => getToken(CFloor4Parser.TOKEN_Comparator, 0);
  TerminalNode? BinaryBooleanOperator() => getToken(CFloor4Parser.TOKEN_BinaryBooleanOperator, 0);
  BooleanExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_booleanExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterBooleanExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitBooleanExpression(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor4Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor4Parser.TOKEN_StringLiteral, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitAssignment(this);
  }
}

class StringLengthExpressionContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor4Parser.TOKEN_Identifier, 0);
  StringLengthExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_stringLengthExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterStringLengthExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitStringLengthExpression(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor4Parser.TOKEN_Number, 0);
  TerminalNode? Identifier() => getToken(CFloor4Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext? mathFunctionExpression() => getRuleContext<MathFunctionExpressionContext>(0);
  StringLengthExpressionContext? stringLengthExpression() => getRuleContext<StringLengthExpressionContext>(0);
  MathOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterMathOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitMathOperand(this);
  }
}

class ReadFunctionExpressionContext extends ParserRuleContext {
  ReadFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterReadFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitReadFunctionExpression(this);
  }
}

class MathFunctionExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterMathFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitMathFunctionExpression(this);
  }
}

class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(CFloor4Parser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitProgram(this);
  }
}

class DeclAssignStatementContext extends ParserRuleContext {
  TerminalNode? Type() => getToken(CFloor4Parser.TOKEN_Type, 0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  DeclAssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declAssignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterDeclAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitDeclAssignStatement(this);
  }
}

class AssignStatementContext extends ParserRuleContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitAssignStatement(this);
  }
}

class WriteStatementContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor4Parser.TOKEN_Identifier, 0);
  TerminalNode? Number() => getToken(CFloor4Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor4Parser.TOKEN_StringLiteral, 0);
  WriteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_writeStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterWriteStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitWriteStatement(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? MathOperator() => getToken(CFloor4Parser.TOKEN_MathOperator, 0);
  MathExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitMathExpression(this);
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
    if (listener is CFloor4Listener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitStatement(this);
  }
}

