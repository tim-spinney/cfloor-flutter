// Generated from grammars/CFloor4.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor4Listener.dart';
import 'CFloor4BaseListener.dart';
const int RULE_type = 0, RULE_booleanOperand = 1, RULE_booleanExpression = 2, 
          RULE_expression = 3, RULE_assignment = 4, RULE_block = 5, RULE_ifStatement = 6, 
          RULE_elseBlock = 7, RULE_ifBlock = 8, RULE_statement = 9, RULE_program = 10, 
          RULE_stringLengthExpression = 11, RULE_mathOperand = 12, RULE_readFunctionExpression = 13, 
          RULE_mathFunctionExpression = 14, RULE_declAssignStatement = 15, 
          RULE_assignStatement = 16, RULE_writeStatement = 17, RULE_variableAccessor = 18, 
          RULE_mathExpression = 19;
class CFloor4Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);
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
                   TOKEN_T__21 = 22, TOKEN_T__22 = 23, TOKEN_T__23 = 24, 
                   TOKEN_BinaryBooleanOperator = 25, TOKEN_UnaryBooleanOperator = 26, 
                   TOKEN_BooleanLiteral = 27, TOKEN_Comparator = 28, TOKEN_Number = 29, 
                   TOKEN_MathOperator = 30, TOKEN_StringLiteral = 31, TOKEN_WS = 32, 
                   TOKEN_Identifier = 33;

  @override
  final List<String> ruleNames = [
    'type', 'booleanOperand', 'booleanExpression', 'expression', 'assignment', 
    'block', 'ifStatement', 'elseBlock', 'ifBlock', 'statement', 'program', 
    'stringLengthExpression', 'mathOperand', 'readFunctionExpression', 'mathFunctionExpression', 
    'declAssignStatement', 'assignStatement', 'writeStatement', 'variableAccessor', 
    'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'int'", "'float'", "'string'", "'bool'", "'('", "')'", "'='", 
      "'{'", "'}'", "'if'", "'else'", "'length('", "'read_int()'", "'read_float()'", 
      "'read_string()'", "'floor'", "'ceil'", "'round'", "'sqrt'", "'sin'", 
      "'cos'", "'tan'", "';'", "'write'", null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, "BinaryBooleanOperator", "UnaryBooleanOperator", 
      "BooleanLiteral", "Comparator", "Number", "MathOperator", "StringLiteral", 
      "WS", "Identifier"
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 0, RULE_type);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 40;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 30) != 0))) {
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

  BooleanOperandContext booleanOperand() {
    dynamic _localctx = BooleanOperandContext(context, state);
    enterRule(_localctx, 2, RULE_booleanOperand);
    try {
      state = 48;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 42;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 43;
        variableAccessor();
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 3);
        state = 44;
        match(TOKEN_T__4);
        state = 45;
        booleanExpression();
        state = 46;
        match(TOKEN_T__5);
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
    enterRule(_localctx, 4, RULE_booleanExpression);
    int _la;
    try {
      state = 61;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 50;
        match(TOKEN_UnaryBooleanOperator);
        state = 51;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 52;
        mathOperand();
        state = 53;
        match(TOKEN_Comparator);
        state = 54;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 56;
        booleanOperand();
        state = 59;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 57;
          match(TOKEN_BinaryBooleanOperator);
          state = 58;
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

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 6, RULE_expression);
    try {
      state = 67;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 63;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 64;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 65;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 66;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 8, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 69;
      match(TOKEN_Identifier);
      state = 70;
      match(TOKEN_T__6);
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

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 10, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 73;
      match(TOKEN_T__7);
      state = 75; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 74;
        statement();
        state = 77; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8606712862) != 0));
      state = 79;
      match(TOKEN_T__8);
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
      state = 81;
      match(TOKEN_T__9);
      state = 82;
      match(TOKEN_T__4);
      state = 83;
      booleanExpression();
      state = 84;
      match(TOKEN_T__5);
      state = 85;
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
      state = 87;
      match(TOKEN_T__10);
      state = 88;
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
      state = 90;
      ifStatement();
      state = 95;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 91;
          match(TOKEN_T__10);
          state = 92;
          ifStatement(); 
        }
        state = 97;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
      }
      state = 99;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__10) {
        state = 98;
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
    enterRule(_localctx, 18, RULE_statement);
    try {
      state = 105;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__23:
        enterOuterAlt(_localctx, 1);
        state = 101;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 102;
        assignStatement();
        break;
      case TOKEN_T__0:
      case TOKEN_T__1:
      case TOKEN_T__2:
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 3);
        state = 103;
        declAssignStatement();
        break;
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 4);
        state = 104;
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
    enterRule(_localctx, 20, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 108; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 107;
        statement();
        state = 110; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8606712862) != 0));
      state = 112;
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
    enterRule(_localctx, 22, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 114;
      match(TOKEN_T__11);
      state = 115;
      variableAccessor();
      state = 116;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 24, RULE_mathOperand);
    try {
      state = 126;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 118;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 119;
        variableAccessor();
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 3);
        state = 120;
        match(TOKEN_T__4);
        state = 121;
        mathExpression();
        state = 122;
        match(TOKEN_T__5);
        break;
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
        enterOuterAlt(_localctx, 4);
        state = 124;
        mathFunctionExpression();
        break;
      case TOKEN_T__11:
        enterOuterAlt(_localctx, 5);
        state = 125;
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
    enterRule(_localctx, 26, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 128;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 57344) != 0))) {
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
    enterRule(_localctx, 28, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 130;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 8323072) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 131;
      match(TOKEN_T__4);
      state = 132;
      mathExpression();
      state = 133;
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 30, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 135;
      type();
      state = 136;
      assignment();
      state = 137;
      match(TOKEN_T__22);
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
    enterRule(_localctx, 32, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 139;
      assignment();
      state = 140;
      match(TOKEN_T__22);
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
    enterRule(_localctx, 34, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 142;
      match(TOKEN_T__23);
      state = 143;
      match(TOKEN_T__4);
      state = 147;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 144;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 145;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 146;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 149;
      match(TOKEN_T__5);
      state = 150;
      match(TOKEN_T__22);
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
    enterRule(_localctx, 36, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 152;
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
    enterRule(_localctx, 38, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 154;
      mathOperand();
      state = 157;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 155;
        match(TOKEN_MathOperator);
        state = 156;
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
      4,1,33,160,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,1,0,1,0,
      1,1,1,1,1,1,1,1,1,1,1,1,3,1,49,8,1,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,
      1,2,3,2,60,8,2,3,2,62,8,2,1,3,1,3,1,3,1,3,3,3,68,8,3,1,4,1,4,1,4,1,
      4,1,5,1,5,4,5,76,8,5,11,5,12,5,77,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,6,
      1,7,1,7,1,7,1,8,1,8,1,8,5,8,94,8,8,10,8,12,8,97,9,8,1,8,3,8,100,8,
      8,1,9,1,9,1,9,1,9,3,9,106,8,9,1,10,4,10,109,8,10,11,10,12,10,110,1,
      10,1,10,1,11,1,11,1,11,1,11,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,
      3,12,127,8,12,1,13,1,13,1,14,1,14,1,14,1,14,1,14,1,15,1,15,1,15,1,
      15,1,16,1,16,1,16,1,17,1,17,1,17,1,17,1,17,3,17,148,8,17,1,17,1,17,
      1,17,1,18,1,18,1,19,1,19,1,19,3,19,158,8,19,1,19,0,0,20,0,2,4,6,8,
      10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,0,3,1,0,1,4,1,0,13,15,
      1,0,16,22,161,0,40,1,0,0,0,2,48,1,0,0,0,4,61,1,0,0,0,6,67,1,0,0,0,
      8,69,1,0,0,0,10,73,1,0,0,0,12,81,1,0,0,0,14,87,1,0,0,0,16,90,1,0,0,
      0,18,105,1,0,0,0,20,108,1,0,0,0,22,114,1,0,0,0,24,126,1,0,0,0,26,128,
      1,0,0,0,28,130,1,0,0,0,30,135,1,0,0,0,32,139,1,0,0,0,34,142,1,0,0,
      0,36,152,1,0,0,0,38,154,1,0,0,0,40,41,7,0,0,0,41,1,1,0,0,0,42,49,5,
      27,0,0,43,49,3,36,18,0,44,45,5,5,0,0,45,46,3,4,2,0,46,47,5,6,0,0,47,
      49,1,0,0,0,48,42,1,0,0,0,48,43,1,0,0,0,48,44,1,0,0,0,49,3,1,0,0,0,
      50,51,5,26,0,0,51,62,3,2,1,0,52,53,3,24,12,0,53,54,5,28,0,0,54,55,
      3,24,12,0,55,62,1,0,0,0,56,59,3,2,1,0,57,58,5,25,0,0,58,60,3,2,1,0,
      59,57,1,0,0,0,59,60,1,0,0,0,60,62,1,0,0,0,61,50,1,0,0,0,61,52,1,0,
      0,0,61,56,1,0,0,0,62,5,1,0,0,0,63,68,3,38,19,0,64,68,3,26,13,0,65,
      68,5,31,0,0,66,68,3,4,2,0,67,63,1,0,0,0,67,64,1,0,0,0,67,65,1,0,0,
      0,67,66,1,0,0,0,68,7,1,0,0,0,69,70,5,33,0,0,70,71,5,7,0,0,71,72,3,
      6,3,0,72,9,1,0,0,0,73,75,5,8,0,0,74,76,3,18,9,0,75,74,1,0,0,0,76,77,
      1,0,0,0,77,75,1,0,0,0,77,78,1,0,0,0,78,79,1,0,0,0,79,80,5,9,0,0,80,
      11,1,0,0,0,81,82,5,10,0,0,82,83,5,5,0,0,83,84,3,4,2,0,84,85,5,6,0,
      0,85,86,3,10,5,0,86,13,1,0,0,0,87,88,5,11,0,0,88,89,3,10,5,0,89,15,
      1,0,0,0,90,95,3,12,6,0,91,92,5,11,0,0,92,94,3,12,6,0,93,91,1,0,0,0,
      94,97,1,0,0,0,95,93,1,0,0,0,95,96,1,0,0,0,96,99,1,0,0,0,97,95,1,0,
      0,0,98,100,3,14,7,0,99,98,1,0,0,0,99,100,1,0,0,0,100,17,1,0,0,0,101,
      106,3,34,17,0,102,106,3,32,16,0,103,106,3,30,15,0,104,106,3,16,8,0,
      105,101,1,0,0,0,105,102,1,0,0,0,105,103,1,0,0,0,105,104,1,0,0,0,106,
      19,1,0,0,0,107,109,3,18,9,0,108,107,1,0,0,0,109,110,1,0,0,0,110,108,
      1,0,0,0,110,111,1,0,0,0,111,112,1,0,0,0,112,113,5,0,0,1,113,21,1,0,
      0,0,114,115,5,12,0,0,115,116,3,36,18,0,116,117,5,6,0,0,117,23,1,0,
      0,0,118,127,5,29,0,0,119,127,3,36,18,0,120,121,5,5,0,0,121,122,3,38,
      19,0,122,123,5,6,0,0,123,127,1,0,0,0,124,127,3,28,14,0,125,127,3,22,
      11,0,126,118,1,0,0,0,126,119,1,0,0,0,126,120,1,0,0,0,126,124,1,0,0,
      0,126,125,1,0,0,0,127,25,1,0,0,0,128,129,7,1,0,0,129,27,1,0,0,0,130,
      131,7,2,0,0,131,132,5,5,0,0,132,133,3,38,19,0,133,134,5,6,0,0,134,
      29,1,0,0,0,135,136,3,0,0,0,136,137,3,8,4,0,137,138,5,23,0,0,138,31,
      1,0,0,0,139,140,3,8,4,0,140,141,5,23,0,0,141,33,1,0,0,0,142,143,5,
      24,0,0,143,147,5,5,0,0,144,148,3,36,18,0,145,148,5,29,0,0,146,148,
      5,31,0,0,147,144,1,0,0,0,147,145,1,0,0,0,147,146,1,0,0,0,148,149,1,
      0,0,0,149,150,5,6,0,0,150,151,5,23,0,0,151,35,1,0,0,0,152,153,5,33,
      0,0,153,37,1,0,0,0,154,157,3,24,12,0,155,156,5,30,0,0,156,158,3,24,
      12,0,157,155,1,0,0,0,157,158,1,0,0,0,158,39,1,0,0,0,12,48,59,61,67,
      77,95,99,105,110,126,147,157
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
    if (listener is CFloor4Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitType(this);
  }
}

class BooleanOperandContext extends ParserRuleContext {
  TerminalNode? BooleanLiteral() => getToken(CFloor4Parser.TOKEN_BooleanLiteral, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class ExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor4Parser.TOKEN_StringLiteral, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitExpression(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor4Parser.TOKEN_Identifier, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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
  TypeContext? type() => getRuleContext<TypeContext>(0);
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
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor4Parser.TOKEN_Identifier, 0);
  VariableAccessorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableAccessor;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.enterVariableAccessor(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor4Listener) listener.exitVariableAccessor(this);
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

