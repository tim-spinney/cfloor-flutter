// Generated from grammars/CFloor5.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor5Listener.dart';
import 'CFloor5BaseListener.dart';
const int RULE_whileLoop = 0, RULE_statement = 1, RULE_booleanOperand = 2, 
          RULE_booleanExpression = 3, RULE_assignment = 4, RULE_block = 5, 
          RULE_ifStatement = 6, RULE_elseBlock = 7, RULE_ifBlock = 8, RULE_program = 9, 
          RULE_stringLengthExpression = 10, RULE_mathOperand = 11, RULE_readFunctionExpression = 12, 
          RULE_mathFunctionExpression = 13, RULE_declAssignStatement = 14, 
          RULE_assignStatement = 15, RULE_writeStatement = 16, RULE_mathExpression = 17;
class CFloor5Parser extends Parser {
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
                   TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_T__20 = 21, 
                   TOKEN_BinaryBooleanOperator = 22, TOKEN_UnaryBooleanOperator = 23, 
                   TOKEN_BooleanLiteral = 24, TOKEN_Comparator = 25, TOKEN_Type = 26, 
                   TOKEN_Number = 27, TOKEN_MathOperator = 28, TOKEN_StringLiteral = 29, 
                   TOKEN_WS = 30, TOKEN_Identifier = 31;

  @override
  final List<String> ruleNames = [
    'whileLoop', 'statement', 'booleanOperand', 'booleanExpression', 'assignment', 
    'block', 'ifStatement', 'elseBlock', 'ifBlock', 'program', 'stringLengthExpression', 
    'mathOperand', 'readFunctionExpression', 'mathFunctionExpression', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'while'", "'('", "')'", "'='", "'{'", "'}'", "'if'", "'else'", 
      "'length('", "'readInt()'", "'readFloat()'", "'readString()'", "'floor'", 
      "'ceil'", "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", "';'", "'write'", 
      null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      "BinaryBooleanOperator", "UnaryBooleanOperator", "BooleanLiteral", 
      "Comparator", "Type", "Number", "MathOperator", "StringLiteral", "WS", 
      "Identifier"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'CFloor5.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  CFloor5Parser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  WhileLoopContext whileLoop() {
    dynamic _localctx = WhileLoopContext(context, state);
    enterRule(_localctx, 0, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 36;
      match(TOKEN_T__0);
      state = 37;
      match(TOKEN_T__1);
      state = 38;
      booleanExpression();
      state = 39;
      match(TOKEN_T__2);
      state = 40;
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

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 2, RULE_statement);
    try {
      state = 47;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__20:
        enterOuterAlt(_localctx, 1);
        state = 42;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 43;
        assignStatement();
        break;
      case TOKEN_Type:
        enterOuterAlt(_localctx, 3);
        state = 44;
        declAssignStatement();
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 4);
        state = 45;
        ifBlock();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 5);
        state = 46;
        whileLoop();
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

  BooleanOperandContext booleanOperand() {
    dynamic _localctx = BooleanOperandContext(context, state);
    enterRule(_localctx, 4, RULE_booleanOperand);
    try {
      state = 55;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 49;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 50;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 51;
        match(TOKEN_T__1);
        state = 52;
        booleanExpression();
        state = 53;
        match(TOKEN_T__2);
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
    enterRule(_localctx, 6, RULE_booleanExpression);
    int _la;
    try {
      state = 68;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 57;
        match(TOKEN_UnaryBooleanOperator);
        state = 58;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 59;
        mathOperand();
        state = 60;
        match(TOKEN_Comparator);
        state = 61;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 63;
        booleanOperand();
        state = 66;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 64;
          match(TOKEN_BinaryBooleanOperator);
          state = 65;
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
    enterRule(_localctx, 8, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 70;
      match(TOKEN_Identifier);
      state = 71;
      match(TOKEN_T__3);
      state = 76;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        state = 72;
        mathExpression();
        break;
      case 2:
        state = 73;
        readFunctionExpression();
        break;
      case 3:
        state = 74;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        state = 75;
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
    enterRule(_localctx, 10, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 78;
      match(TOKEN_T__4);
      state = 80; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 79;
        statement();
        state = 82; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2216689794) != 0));
      state = 84;
      match(TOKEN_T__5);
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
    enterRule(_localctx, 12, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 86;
      match(TOKEN_T__6);
      state = 87;
      match(TOKEN_T__1);
      state = 88;
      booleanExpression();
      state = 89;
      match(TOKEN_T__2);
      state = 90;
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
    enterRule(_localctx, 14, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 92;
      match(TOKEN_T__7);
      state = 93;
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
    enterRule(_localctx, 16, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 95;
      ifStatement();
      state = 100;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 96;
          match(TOKEN_T__7);
          state = 97;
          ifStatement(); 
        }
        state = 102;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
      }
      state = 104;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__7) {
        state = 103;
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 18, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 107; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 106;
        statement();
        state = 109; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 2216689794) != 0));
      state = 111;
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
    enterRule(_localctx, 20, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 113;
      match(TOKEN_T__8);
      state = 114;
      match(TOKEN_Identifier);
      state = 115;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 22, RULE_mathOperand);
    try {
      state = 125;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 117;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 118;
        match(TOKEN_Identifier);
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 119;
        match(TOKEN_T__1);
        state = 120;
        mathExpression();
        state = 121;
        match(TOKEN_T__2);
        break;
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
        enterOuterAlt(_localctx, 4);
        state = 123;
        mathFunctionExpression();
        break;
      case TOKEN_T__8:
        enterOuterAlt(_localctx, 5);
        state = 124;
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
    enterRule(_localctx, 24, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 127;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 7168) != 0))) {
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
    enterRule(_localctx, 26, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 129;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1040384) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 130;
      match(TOKEN_T__1);
      state = 131;
      mathExpression();
      state = 132;
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 28, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 134;
      match(TOKEN_Type);
      state = 135;
      assignment();
      state = 136;
      match(TOKEN_T__19);
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
    enterRule(_localctx, 30, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 138;
      assignment();
      state = 139;
      match(TOKEN_T__19);
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
    enterRule(_localctx, 32, RULE_writeStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 141;
      match(TOKEN_T__20);
      state = 142;
      match(TOKEN_T__1);
      state = 143;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2818572288) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 144;
      match(TOKEN_T__2);
      state = 145;
      match(TOKEN_T__19);
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
    enterRule(_localctx, 34, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 147;
      mathOperand();
      state = 150;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 148;
        match(TOKEN_MathOperator);
        state = 149;
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
      4,1,31,153,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,1,0,1,0,1,0,1,0,1,0,1,0,1,1,
      1,1,1,1,1,1,1,1,3,1,48,8,1,1,2,1,2,1,2,1,2,1,2,1,2,3,2,56,8,2,1,3,
      1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,3,3,67,8,3,3,3,69,8,3,1,4,1,4,1,4,
      1,4,1,4,1,4,3,4,77,8,4,1,5,1,5,4,5,81,8,5,11,5,12,5,82,1,5,1,5,1,6,
      1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,7,1,8,1,8,1,8,5,8,99,8,8,10,8,12,8,102,
      9,8,1,8,3,8,105,8,8,1,9,4,9,108,8,9,11,9,12,9,109,1,9,1,9,1,10,1,10,
      1,10,1,10,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,3,11,126,8,11,1,
      12,1,12,1,13,1,13,1,13,1,13,1,13,1,14,1,14,1,14,1,14,1,15,1,15,1,15,
      1,16,1,16,1,16,1,16,1,16,1,16,1,17,1,17,1,17,3,17,151,8,17,1,17,0,
      0,18,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,0,3,1,0,10,12,
      1,0,13,19,3,0,27,27,29,29,31,31,155,0,36,1,0,0,0,2,47,1,0,0,0,4,55,
      1,0,0,0,6,68,1,0,0,0,8,70,1,0,0,0,10,78,1,0,0,0,12,86,1,0,0,0,14,92,
      1,0,0,0,16,95,1,0,0,0,18,107,1,0,0,0,20,113,1,0,0,0,22,125,1,0,0,0,
      24,127,1,0,0,0,26,129,1,0,0,0,28,134,1,0,0,0,30,138,1,0,0,0,32,141,
      1,0,0,0,34,147,1,0,0,0,36,37,5,1,0,0,37,38,5,2,0,0,38,39,3,6,3,0,39,
      40,5,3,0,0,40,41,3,10,5,0,41,1,1,0,0,0,42,48,3,32,16,0,43,48,3,30,
      15,0,44,48,3,28,14,0,45,48,3,16,8,0,46,48,3,0,0,0,47,42,1,0,0,0,47,
      43,1,0,0,0,47,44,1,0,0,0,47,45,1,0,0,0,47,46,1,0,0,0,48,3,1,0,0,0,
      49,56,5,24,0,0,50,56,5,31,0,0,51,52,5,2,0,0,52,53,3,6,3,0,53,54,5,
      3,0,0,54,56,1,0,0,0,55,49,1,0,0,0,55,50,1,0,0,0,55,51,1,0,0,0,56,5,
      1,0,0,0,57,58,5,23,0,0,58,69,3,4,2,0,59,60,3,22,11,0,60,61,5,25,0,
      0,61,62,3,22,11,0,62,69,1,0,0,0,63,66,3,4,2,0,64,65,5,22,0,0,65,67,
      3,4,2,0,66,64,1,0,0,0,66,67,1,0,0,0,67,69,1,0,0,0,68,57,1,0,0,0,68,
      59,1,0,0,0,68,63,1,0,0,0,69,7,1,0,0,0,70,71,5,31,0,0,71,76,5,4,0,0,
      72,77,3,34,17,0,73,77,3,24,12,0,74,77,5,29,0,0,75,77,3,6,3,0,76,72,
      1,0,0,0,76,73,1,0,0,0,76,74,1,0,0,0,76,75,1,0,0,0,77,9,1,0,0,0,78,
      80,5,5,0,0,79,81,3,2,1,0,80,79,1,0,0,0,81,82,1,0,0,0,82,80,1,0,0,0,
      82,83,1,0,0,0,83,84,1,0,0,0,84,85,5,6,0,0,85,11,1,0,0,0,86,87,5,7,
      0,0,87,88,5,2,0,0,88,89,3,6,3,0,89,90,5,3,0,0,90,91,3,10,5,0,91,13,
      1,0,0,0,92,93,5,8,0,0,93,94,3,10,5,0,94,15,1,0,0,0,95,100,3,12,6,0,
      96,97,5,8,0,0,97,99,3,12,6,0,98,96,1,0,0,0,99,102,1,0,0,0,100,98,1,
      0,0,0,100,101,1,0,0,0,101,104,1,0,0,0,102,100,1,0,0,0,103,105,3,14,
      7,0,104,103,1,0,0,0,104,105,1,0,0,0,105,17,1,0,0,0,106,108,3,2,1,0,
      107,106,1,0,0,0,108,109,1,0,0,0,109,107,1,0,0,0,109,110,1,0,0,0,110,
      111,1,0,0,0,111,112,5,0,0,1,112,19,1,0,0,0,113,114,5,9,0,0,114,115,
      5,31,0,0,115,116,5,3,0,0,116,21,1,0,0,0,117,126,5,27,0,0,118,126,5,
      31,0,0,119,120,5,2,0,0,120,121,3,34,17,0,121,122,5,3,0,0,122,126,1,
      0,0,0,123,126,3,26,13,0,124,126,3,20,10,0,125,117,1,0,0,0,125,118,
      1,0,0,0,125,119,1,0,0,0,125,123,1,0,0,0,125,124,1,0,0,0,126,23,1,0,
      0,0,127,128,7,0,0,0,128,25,1,0,0,0,129,130,7,1,0,0,130,131,5,2,0,0,
      131,132,3,34,17,0,132,133,5,3,0,0,133,27,1,0,0,0,134,135,5,26,0,0,
      135,136,3,8,4,0,136,137,5,20,0,0,137,29,1,0,0,0,138,139,3,8,4,0,139,
      140,5,20,0,0,140,31,1,0,0,0,141,142,5,21,0,0,142,143,5,2,0,0,143,144,
      7,2,0,0,144,145,5,3,0,0,145,146,5,20,0,0,146,33,1,0,0,0,147,150,3,
      22,11,0,148,149,5,28,0,0,149,151,3,22,11,0,150,148,1,0,0,0,150,151,
      1,0,0,0,151,35,1,0,0,0,11,47,55,66,68,76,82,100,104,109,125,150
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class WhileLoopContext extends ParserRuleContext {
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  WhileLoopContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whileLoop;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterWhileLoop(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitWhileLoop(this);
  }
}

class StatementContext extends ParserRuleContext {
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
  IfBlockContext? ifBlock() => getRuleContext<IfBlockContext>(0);
  WhileLoopContext? whileLoop() => getRuleContext<WhileLoopContext>(0);
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitStatement(this);
  }
}

class BooleanOperandContext extends ParserRuleContext {
  TerminalNode? BooleanLiteral() => getToken(CFloor5Parser.TOKEN_BooleanLiteral, 0);
  TerminalNode? Identifier() => getToken(CFloor5Parser.TOKEN_Identifier, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  BooleanOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_booleanOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterBooleanOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitBooleanOperand(this);
  }
}

class BooleanExpressionContext extends ParserRuleContext {
  TerminalNode? UnaryBooleanOperator() => getToken(CFloor5Parser.TOKEN_UnaryBooleanOperator, 0);
  List<BooleanOperandContext> booleanOperands() => getRuleContexts<BooleanOperandContext>();
  BooleanOperandContext? booleanOperand(int i) => getRuleContext<BooleanOperandContext>(i);
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? Comparator() => getToken(CFloor5Parser.TOKEN_Comparator, 0);
  TerminalNode? BinaryBooleanOperator() => getToken(CFloor5Parser.TOKEN_BinaryBooleanOperator, 0);
  BooleanExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_booleanExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterBooleanExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitBooleanExpression(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor5Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor5Parser.TOKEN_StringLiteral, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitAssignment(this);
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
    if (listener is CFloor5Listener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitBlock(this);
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
    if (listener is CFloor5Listener) listener.enterIfStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitIfStatement(this);
  }
}

class ElseBlockContext extends ParserRuleContext {
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ElseBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterElseBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitElseBlock(this);
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
    if (listener is CFloor5Listener) listener.enterIfBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitIfBlock(this);
  }
}

class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(CFloor5Parser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitProgram(this);
  }
}

class StringLengthExpressionContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor5Parser.TOKEN_Identifier, 0);
  StringLengthExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_stringLengthExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterStringLengthExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitStringLengthExpression(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor5Parser.TOKEN_Number, 0);
  TerminalNode? Identifier() => getToken(CFloor5Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext? mathFunctionExpression() => getRuleContext<MathFunctionExpressionContext>(0);
  StringLengthExpressionContext? stringLengthExpression() => getRuleContext<StringLengthExpressionContext>(0);
  MathOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterMathOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitMathOperand(this);
  }
}

class ReadFunctionExpressionContext extends ParserRuleContext {
  ReadFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterReadFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitReadFunctionExpression(this);
  }
}

class MathFunctionExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterMathFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitMathFunctionExpression(this);
  }
}

class DeclAssignStatementContext extends ParserRuleContext {
  TerminalNode? Type() => getToken(CFloor5Parser.TOKEN_Type, 0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  DeclAssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_declAssignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterDeclAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitDeclAssignStatement(this);
  }
}

class AssignStatementContext extends ParserRuleContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitAssignStatement(this);
  }
}

class WriteStatementContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor5Parser.TOKEN_Identifier, 0);
  TerminalNode? Number() => getToken(CFloor5Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor5Parser.TOKEN_StringLiteral, 0);
  WriteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_writeStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterWriteStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitWriteStatement(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? MathOperator() => getToken(CFloor5Parser.TOKEN_MathOperator, 0);
  MathExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitMathExpression(this);
  }
}

