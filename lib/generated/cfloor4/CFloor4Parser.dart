// Generated from grammars/CFloor4.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor4Listener.dart';
import 'CFloor4BaseListener.dart';
const int RULE_booleanOperand = 0, RULE_booleanExpression = 1, RULE_assignment = 2, 
          RULE_block = 3, RULE_ifStatement = 4, RULE_elseBlock = 5, RULE_ifBlock = 6, 
          RULE_statement = 7, RULE_program = 8, RULE_stringLengthExpression = 9, 
          RULE_mathOperand = 10, RULE_readFunctionExpression = 11, RULE_mathFunctionExpression = 12, 
          RULE_declAssignStatement = 13, RULE_assignStatement = 14, RULE_writeStatement = 15, 
          RULE_mathExpression = 16;
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
                   TOKEN_T__15 = 16, TOKEN_T__16 = 17, TOKEN_T__17 = 18, 
                   TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_BinaryBooleanOperator = 21, 
                   TOKEN_UnaryBooleanOperator = 22, TOKEN_BooleanLiteral = 23, 
                   TOKEN_Comparator = 24, TOKEN_Type = 25, TOKEN_Number = 26, 
                   TOKEN_MathOperator = 27, TOKEN_StringLiteral = 28, TOKEN_WS = 29, 
                   TOKEN_Identifier = 30;

  @override
  final List<String> ruleNames = [
    'booleanOperand', 'booleanExpression', 'assignment', 'block', 'ifStatement', 
    'elseBlock', 'ifBlock', 'statement', 'program', 'stringLengthExpression', 
    'mathOperand', 'readFunctionExpression', 'mathFunctionExpression', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'='", "'{'", "'}'", "'if'", "'else'", "'length('", 
      "'readInt()'", "'readFloat()'", "'readString()'", "'floor'", "'ceil'", 
      "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", "';'", "'write'", 
      null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, "BinaryBooleanOperator", 
      "UnaryBooleanOperator", "BooleanLiteral", "Comparator", "Type", "Number", 
      "MathOperator", "StringLiteral", "WS", "Identifier"
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
      state = 40;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 34;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 35;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 36;
        match(TOKEN_T__0);
        state = 37;
        booleanExpression();
        state = 38;
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
      state = 53;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 42;
        match(TOKEN_UnaryBooleanOperator);
        state = 43;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 44;
        mathOperand();
        state = 45;
        match(TOKEN_Comparator);
        state = 46;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 48;
        booleanOperand();
        state = 51;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 49;
          match(TOKEN_BinaryBooleanOperator);
          state = 50;
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
      state = 55;
      match(TOKEN_Identifier);
      state = 56;
      match(TOKEN_T__2);
      state = 61;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        state = 57;
        mathExpression();
        break;
      case 2:
        state = 58;
        readFunctionExpression();
        break;
      case 3:
        state = 59;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        state = 60;
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
      state = 63;
      match(TOKEN_T__3);
      state = 65; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 64;
        statement();
        state = 67; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1108344896) != 0));
      state = 69;
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

  IfStatementContext ifStatement() {
    dynamic _localctx = IfStatementContext(context, state);
    enterRule(_localctx, 8, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 71;
      match(TOKEN_T__5);
      state = 72;
      match(TOKEN_T__0);
      state = 73;
      booleanExpression();
      state = 74;
      match(TOKEN_T__1);
      state = 75;
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

  ElseBlockContext elseBlock() {
    dynamic _localctx = ElseBlockContext(context, state);
    enterRule(_localctx, 10, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 77;
      match(TOKEN_T__6);
      state = 78;
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

  IfBlockContext ifBlock() {
    dynamic _localctx = IfBlockContext(context, state);
    enterRule(_localctx, 12, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 80;
      ifStatement();
      state = 85;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 81;
          match(TOKEN_T__6);
          state = 82;
          ifStatement(); 
        }
        state = 87;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
      }
      state = 89;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__6) {
        state = 88;
        elseBlock();
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
    enterRule(_localctx, 14, RULE_statement);
    try {
      state = 95;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__19:
        enterOuterAlt(_localctx, 1);
        state = 91;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 92;
        assignStatement();
        break;
      case TOKEN_Type:
        enterOuterAlt(_localctx, 3);
        state = 93;
        declAssignStatement();
        break;
      case TOKEN_T__5:
        enterOuterAlt(_localctx, 4);
        state = 94;
        ifBlock();
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
    enterRule(_localctx, 16, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 98; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 97;
        statement();
        state = 100; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1108344896) != 0));
      state = 102;
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
    enterRule(_localctx, 18, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 104;
      match(TOKEN_T__7);
      state = 105;
      match(TOKEN_Identifier);
      state = 106;
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
    enterRule(_localctx, 20, RULE_mathOperand);
    try {
      state = 116;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 108;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 109;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 110;
        match(TOKEN_T__0);
        state = 111;
        mathExpression();
        state = 112;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
        enterOuterAlt(_localctx, 4);
        state = 114;
        mathFunctionExpression();
        break;
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 5);
        state = 115;
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
    enterRule(_localctx, 22, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 118;
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
    enterRule(_localctx, 24, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 120;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 520192) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 121;
      match(TOKEN_T__0);
      state = 122;
      mathExpression();
      state = 123;
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
    enterRule(_localctx, 26, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 125;
      match(TOKEN_Type);
      state = 126;
      assignment();
      state = 127;
      match(TOKEN_T__18);
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
    enterRule(_localctx, 28, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 129;
      assignment();
      state = 130;
      match(TOKEN_T__18);
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
    enterRule(_localctx, 30, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 132;
      match(TOKEN_T__19);
      state = 133;
      match(TOKEN_T__0);
      state = 134;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1409286144) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 135;
      match(TOKEN_T__1);
      state = 136;
      match(TOKEN_T__18);
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
    enterRule(_localctx, 32, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 138;
      mathOperand();
      state = 141;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 139;
        match(TOKEN_MathOperator);
        state = 140;
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
      4,1,30,144,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,1,0,1,0,1,0,1,0,1,0,1,0,3,0,41,8,0,1,1,
      1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,52,8,1,3,1,54,8,1,1,2,1,2,1,2,
      1,2,1,2,1,2,3,2,62,8,2,1,3,1,3,4,3,66,8,3,11,3,12,3,67,1,3,1,3,1,4,
      1,4,1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,6,1,6,1,6,5,6,84,8,6,10,6,12,6,87,
      9,6,1,6,3,6,90,8,6,1,7,1,7,1,7,1,7,3,7,96,8,7,1,8,4,8,99,8,8,11,8,
      12,8,100,1,8,1,8,1,9,1,9,1,9,1,9,1,10,1,10,1,10,1,10,1,10,1,10,1,10,
      1,10,3,10,117,8,10,1,11,1,11,1,12,1,12,1,12,1,12,1,12,1,13,1,13,1,
      13,1,13,1,14,1,14,1,14,1,15,1,15,1,15,1,15,1,15,1,15,1,16,1,16,1,16,
      3,16,142,8,16,1,16,0,0,17,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,
      30,32,0,3,1,0,9,11,1,0,12,18,3,0,26,26,28,28,30,30,146,0,40,1,0,0,
      0,2,53,1,0,0,0,4,55,1,0,0,0,6,63,1,0,0,0,8,71,1,0,0,0,10,77,1,0,0,
      0,12,80,1,0,0,0,14,95,1,0,0,0,16,98,1,0,0,0,18,104,1,0,0,0,20,116,
      1,0,0,0,22,118,1,0,0,0,24,120,1,0,0,0,26,125,1,0,0,0,28,129,1,0,0,
      0,30,132,1,0,0,0,32,138,1,0,0,0,34,41,5,23,0,0,35,41,5,30,0,0,36,37,
      5,1,0,0,37,38,3,2,1,0,38,39,5,2,0,0,39,41,1,0,0,0,40,34,1,0,0,0,40,
      35,1,0,0,0,40,36,1,0,0,0,41,1,1,0,0,0,42,43,5,22,0,0,43,54,3,0,0,0,
      44,45,3,20,10,0,45,46,5,24,0,0,46,47,3,20,10,0,47,54,1,0,0,0,48,51,
      3,0,0,0,49,50,5,21,0,0,50,52,3,0,0,0,51,49,1,0,0,0,51,52,1,0,0,0,52,
      54,1,0,0,0,53,42,1,0,0,0,53,44,1,0,0,0,53,48,1,0,0,0,54,3,1,0,0,0,
      55,56,5,30,0,0,56,61,5,3,0,0,57,62,3,32,16,0,58,62,3,22,11,0,59,62,
      5,28,0,0,60,62,3,2,1,0,61,57,1,0,0,0,61,58,1,0,0,0,61,59,1,0,0,0,61,
      60,1,0,0,0,62,5,1,0,0,0,63,65,5,4,0,0,64,66,3,14,7,0,65,64,1,0,0,0,
      66,67,1,0,0,0,67,65,1,0,0,0,67,68,1,0,0,0,68,69,1,0,0,0,69,70,5,5,
      0,0,70,7,1,0,0,0,71,72,5,6,0,0,72,73,5,1,0,0,73,74,3,2,1,0,74,75,5,
      2,0,0,75,76,3,6,3,0,76,9,1,0,0,0,77,78,5,7,0,0,78,79,3,6,3,0,79,11,
      1,0,0,0,80,85,3,8,4,0,81,82,5,7,0,0,82,84,3,8,4,0,83,81,1,0,0,0,84,
      87,1,0,0,0,85,83,1,0,0,0,85,86,1,0,0,0,86,89,1,0,0,0,87,85,1,0,0,0,
      88,90,3,10,5,0,89,88,1,0,0,0,89,90,1,0,0,0,90,13,1,0,0,0,91,96,3,30,
      15,0,92,96,3,28,14,0,93,96,3,26,13,0,94,96,3,12,6,0,95,91,1,0,0,0,
      95,92,1,0,0,0,95,93,1,0,0,0,95,94,1,0,0,0,96,15,1,0,0,0,97,99,3,14,
      7,0,98,97,1,0,0,0,99,100,1,0,0,0,100,98,1,0,0,0,100,101,1,0,0,0,101,
      102,1,0,0,0,102,103,5,0,0,1,103,17,1,0,0,0,104,105,5,8,0,0,105,106,
      5,30,0,0,106,107,5,2,0,0,107,19,1,0,0,0,108,117,5,26,0,0,109,117,5,
      30,0,0,110,111,5,1,0,0,111,112,3,32,16,0,112,113,5,2,0,0,113,117,1,
      0,0,0,114,117,3,24,12,0,115,117,3,18,9,0,116,108,1,0,0,0,116,109,1,
      0,0,0,116,110,1,0,0,0,116,114,1,0,0,0,116,115,1,0,0,0,117,21,1,0,0,
      0,118,119,7,0,0,0,119,23,1,0,0,0,120,121,7,1,0,0,121,122,5,1,0,0,122,
      123,3,32,16,0,123,124,5,2,0,0,124,25,1,0,0,0,125,126,5,25,0,0,126,
      127,3,4,2,0,127,128,5,19,0,0,128,27,1,0,0,0,129,130,3,4,2,0,130,131,
      5,19,0,0,131,29,1,0,0,0,132,133,5,20,0,0,133,134,5,1,0,0,134,135,7,
      2,0,0,135,136,5,2,0,0,136,137,5,19,0,0,137,31,1,0,0,0,138,141,3,20,
      10,0,139,140,5,27,0,0,140,142,3,20,10,0,141,139,1,0,0,0,141,142,1,
      0,0,0,142,33,1,0,0,0,11,40,51,53,61,67,85,89,95,100,116,141
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

class IfStatementContext extends ParserRuleContext {
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  IfStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterIfStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitIfStatement(this);
  }
}

class ElseBlockContext extends ParserRuleContext {
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ElseBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterElseBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitElseBlock(this);
  }
}

class IfBlockContext extends ParserRuleContext {
  List<IfStatementContext> ifStatements() => getRuleContexts<IfStatementContext>();
  IfStatementContext? ifStatement(int i) => getRuleContext<IfStatementContext>(i);
  ElseBlockContext? elseBlock() => getRuleContext<ElseBlockContext>(0);
  IfBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_ifBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterIfBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitIfBlock(this);
  }
}

class StatementContext extends ParserRuleContext {
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
  IfBlockContext? ifBlock() => getRuleContext<IfBlockContext>(0);
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

