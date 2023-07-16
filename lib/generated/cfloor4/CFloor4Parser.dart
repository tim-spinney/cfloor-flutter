// Generated from grammars/CFloor4.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor4Listener.dart';
import 'CFloor4BaseListener.dart';
const int RULE_booleanOperand = 0, RULE_booleanExpression = 1, RULE_assignment = 2, 
          RULE_block = 3, RULE_ifstatement = 4, RULE_ifblock = 5, RULE_statement = 6, 
          RULE_program = 7, RULE_stringLengthExpression = 8, RULE_mathOperand = 9, 
          RULE_readFunctionExpression = 10, RULE_mathFunctionExpression = 11, 
          RULE_declAssignStatement = 12, RULE_assignStatement = 13, RULE_writeStatement = 14, 
          RULE_mathExpression = 15;
class CFloor4Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_T__9 = 10, TOKEN_T__10 = 11, TOKEN_T__11 = 12, 
                   TOKEN_T__12 = 13, TOKEN_T__13 = 14, TOKEN_T__14 = 15, 
                   TOKEN_T__15 = 16, TOKEN_BinaryBooleanOperator = 17, TOKEN_UnaryBooleanOperator = 18, 
                   TOKEN_BooleanLiteral = 19, TOKEN_Comparator = 20, TOKEN_Type = 21, 
                   TOKEN_Number = 22, TOKEN_MathOperator = 23, TOKEN_Identifier = 24, 
                   TOKEN_StringLiteral = 25, TOKEN_WS = 26;

  @override
  final List<String> ruleNames = [
    'booleanOperand', 'booleanExpression', 'assignment', 'block', 'ifstatement', 
    'ifblock', 'statement', 'program', 'stringLengthExpression', 'mathOperand', 
    'readFunctionExpression', 'mathFunctionExpression', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'='", "'{'", "'}'", "'if'", "'else'", "'length('", 
      "'readInt()'", "'readFloat()'", "'readString()'", "'floor'", "'ceil'", 
      "'round'", "';'", "'write'", null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, "BinaryBooleanOperator", "UnaryBooleanOperator", 
      "BooleanLiteral", "Comparator", "Type", "Number", "MathOperator", 
      "Identifier", "StringLiteral", "WS"
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
      state = 38;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 32;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 33;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 34;
        match(TOKEN_T__0);
        state = 35;
        booleanExpression();
        state = 36;
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
      state = 51;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 40;
        match(TOKEN_UnaryBooleanOperator);
        state = 41;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 42;
        mathOperand();
        state = 43;
        match(TOKEN_Comparator);
        state = 44;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 46;
        booleanOperand();
        state = 49;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 47;
          match(TOKEN_BinaryBooleanOperator);
          state = 48;
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
      state = 53;
      match(TOKEN_Identifier);
      state = 54;
      match(TOKEN_T__2);
      state = 59;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        state = 55;
        mathExpression();
        break;
      case 2:
        state = 56;
        readFunctionExpression();
        break;
      case 3:
        state = 57;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        state = 58;
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

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 6, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 61;
      match(TOKEN_T__3);
      state = 63; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 62;
        statement();
        state = 65; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 18939968) != 0));
      state = 67;
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

  IfstatementContext ifstatement() {
    dynamic _localctx = IfstatementContext(context, state);
    enterRule(_localctx, 8, RULE_ifstatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 69;
      match(TOKEN_T__5);
      state = 70;
      match(TOKEN_T__0);
      state = 71;
      booleanExpression();
      state = 72;
      match(TOKEN_T__1);
      state = 73;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IfblockContext ifblock() {
    dynamic _localctx = IfblockContext(context, state);
    enterRule(_localctx, 10, RULE_ifblock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 75;
      ifstatement();
      state = 80;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 76;
          match(TOKEN_T__6);
          state = 77;
          ifstatement(); 
        }
        state = 82;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
      }
      state = 85;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__6) {
        state = 83;
        match(TOKEN_T__6);
        state = 84;
        block();
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
      state = 91;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__15:
        enterOuterAlt(_localctx, 1);
        state = 87;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 88;
        assignStatement();
        break;
      case TOKEN_Type:
        enterOuterAlt(_localctx, 3);
        state = 89;
        declAssignStatement();
        break;
      case TOKEN_T__5:
        enterOuterAlt(_localctx, 4);
        state = 90;
        ifblock();
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 14, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 94; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 93;
        statement();
        state = 96; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 18939968) != 0));
      state = 98;
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

  StringLengthExpressionContext stringLengthExpression() {
    dynamic _localctx = StringLengthExpressionContext(context, state);
    enterRule(_localctx, 16, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 100;
      match(TOKEN_T__7);
      state = 101;
      match(TOKEN_Identifier);
      state = 102;
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
    enterRule(_localctx, 18, RULE_mathOperand);
    try {
      state = 112;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 104;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 105;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 106;
        match(TOKEN_T__0);
        state = 107;
        mathExpression();
        state = 108;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
        enterOuterAlt(_localctx, 4);
        state = 110;
        mathFunctionExpression();
        break;
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 5);
        state = 111;
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
    enterRule(_localctx, 20, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 114;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3584) != 0))) {
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
    enterRule(_localctx, 22, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 116;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 28672) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 117;
      match(TOKEN_T__0);
      state = 118;
      mathExpression();
      state = 119;
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 24, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 121;
      match(TOKEN_Type);
      state = 122;
      assignment();
      state = 123;
      match(TOKEN_T__14);
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
    enterRule(_localctx, 26, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 125;
      assignment();
      state = 126;
      match(TOKEN_T__14);
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
    enterRule(_localctx, 28, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 128;
      match(TOKEN_T__15);
      state = 129;
      match(TOKEN_T__0);
      state = 130;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 54525952) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 131;
      match(TOKEN_T__1);
      state = 132;
      match(TOKEN_T__14);
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
    enterRule(_localctx, 30, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 134;
      mathOperand();
      state = 137;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 135;
        match(TOKEN_MathOperator);
        state = 136;
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

  static const List<int> _serializedATN = [
      4,1,26,140,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,1,0,1,0,1,0,1,0,1,0,1,0,3,0,39,8,0,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,1,1,1,1,3,1,50,8,1,3,1,52,8,1,1,2,1,2,1,2,1,2,1,2,1,
      2,3,2,60,8,2,1,3,1,3,4,3,64,8,3,11,3,12,3,65,1,3,1,3,1,4,1,4,1,4,1,
      4,1,4,1,4,1,5,1,5,1,5,5,5,79,8,5,10,5,12,5,82,9,5,1,5,1,5,3,5,86,8,
      5,1,6,1,6,1,6,1,6,3,6,92,8,6,1,7,4,7,95,8,7,11,7,12,7,96,1,7,1,7,1,
      8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,3,9,113,8,9,1,10,1,10,
      1,11,1,11,1,11,1,11,1,11,1,12,1,12,1,12,1,12,1,13,1,13,1,13,1,14,1,
      14,1,14,1,14,1,14,1,14,1,15,1,15,1,15,3,15,138,8,15,1,15,0,0,16,0,
      2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,0,3,1,0,9,11,1,0,12,14,2,
      0,22,22,24,25,143,0,38,1,0,0,0,2,51,1,0,0,0,4,53,1,0,0,0,6,61,1,0,
      0,0,8,69,1,0,0,0,10,75,1,0,0,0,12,91,1,0,0,0,14,94,1,0,0,0,16,100,
      1,0,0,0,18,112,1,0,0,0,20,114,1,0,0,0,22,116,1,0,0,0,24,121,1,0,0,
      0,26,125,1,0,0,0,28,128,1,0,0,0,30,134,1,0,0,0,32,39,5,19,0,0,33,39,
      5,24,0,0,34,35,5,1,0,0,35,36,3,2,1,0,36,37,5,2,0,0,37,39,1,0,0,0,38,
      32,1,0,0,0,38,33,1,0,0,0,38,34,1,0,0,0,39,1,1,0,0,0,40,41,5,18,0,0,
      41,52,3,0,0,0,42,43,3,18,9,0,43,44,5,20,0,0,44,45,3,18,9,0,45,52,1,
      0,0,0,46,49,3,0,0,0,47,48,5,17,0,0,48,50,3,0,0,0,49,47,1,0,0,0,49,
      50,1,0,0,0,50,52,1,0,0,0,51,40,1,0,0,0,51,42,1,0,0,0,51,46,1,0,0,0,
      52,3,1,0,0,0,53,54,5,24,0,0,54,59,5,3,0,0,55,60,3,30,15,0,56,60,3,
      20,10,0,57,60,5,25,0,0,58,60,3,2,1,0,59,55,1,0,0,0,59,56,1,0,0,0,59,
      57,1,0,0,0,59,58,1,0,0,0,60,5,1,0,0,0,61,63,5,4,0,0,62,64,3,12,6,0,
      63,62,1,0,0,0,64,65,1,0,0,0,65,63,1,0,0,0,65,66,1,0,0,0,66,67,1,0,
      0,0,67,68,5,5,0,0,68,7,1,0,0,0,69,70,5,6,0,0,70,71,5,1,0,0,71,72,3,
      2,1,0,72,73,5,2,0,0,73,74,3,6,3,0,74,9,1,0,0,0,75,80,3,8,4,0,76,77,
      5,7,0,0,77,79,3,8,4,0,78,76,1,0,0,0,79,82,1,0,0,0,80,78,1,0,0,0,80,
      81,1,0,0,0,81,85,1,0,0,0,82,80,1,0,0,0,83,84,5,7,0,0,84,86,3,6,3,0,
      85,83,1,0,0,0,85,86,1,0,0,0,86,11,1,0,0,0,87,92,3,28,14,0,88,92,3,
      26,13,0,89,92,3,24,12,0,90,92,3,10,5,0,91,87,1,0,0,0,91,88,1,0,0,0,
      91,89,1,0,0,0,91,90,1,0,0,0,92,13,1,0,0,0,93,95,3,12,6,0,94,93,1,0,
      0,0,95,96,1,0,0,0,96,94,1,0,0,0,96,97,1,0,0,0,97,98,1,0,0,0,98,99,
      5,0,0,1,99,15,1,0,0,0,100,101,5,8,0,0,101,102,5,24,0,0,102,103,5,2,
      0,0,103,17,1,0,0,0,104,113,5,22,0,0,105,113,5,24,0,0,106,107,5,1,0,
      0,107,108,3,30,15,0,108,109,5,2,0,0,109,113,1,0,0,0,110,113,3,22,11,
      0,111,113,3,16,8,0,112,104,1,0,0,0,112,105,1,0,0,0,112,106,1,0,0,0,
      112,110,1,0,0,0,112,111,1,0,0,0,113,19,1,0,0,0,114,115,7,0,0,0,115,
      21,1,0,0,0,116,117,7,1,0,0,117,118,5,1,0,0,118,119,3,30,15,0,119,120,
      5,2,0,0,120,23,1,0,0,0,121,122,5,21,0,0,122,123,3,4,2,0,123,124,5,
      15,0,0,124,25,1,0,0,0,125,126,3,4,2,0,126,127,5,15,0,0,127,27,1,0,
      0,0,128,129,5,16,0,0,129,130,5,1,0,0,130,131,7,2,0,0,131,132,5,2,0,
      0,132,133,5,15,0,0,133,29,1,0,0,0,134,137,3,18,9,0,135,136,5,23,0,
      0,136,138,3,18,9,0,137,135,1,0,0,0,137,138,1,0,0,0,138,31,1,0,0,0,
      11,38,49,51,59,65,80,85,91,96,112,137
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

class BlockContext extends ParserRuleContext {
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  BlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_block;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitBlock(this);
  }
}

class IfstatementContext extends ParserRuleContext {
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  IfstatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifstatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterIfstatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitIfstatement(this);
  }
}

class IfblockContext extends ParserRuleContext {
  List<IfstatementContext> ifstatements() => getRuleContexts<IfstatementContext>();
  IfstatementContext? ifstatement(int i) => getRuleContext<IfstatementContext>(i);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  IfblockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifblock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterIfblock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitIfblock(this);
  }
}

class StatementContext extends ParserRuleContext {
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
  IfblockContext? ifblock() => getRuleContext<IfblockContext>(0);
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

