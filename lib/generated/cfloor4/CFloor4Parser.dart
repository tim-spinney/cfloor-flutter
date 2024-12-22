// Generated from grammars/CFloor4.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor4Listener.dart';
import 'CFloor4BaseListener.dart';
const int RULE_expression = 0, RULE_booleanOperand = 1, RULE_booleanExpression = 2, 
          RULE_block = 3, RULE_ifStatement = 4, RULE_elseBlock = 5, RULE_ifBlock = 6, 
          RULE_statement = 7, RULE_mathOperand = 8, RULE_stringLengthExpression = 9, 
          RULE_readFunctionExpression = 10, RULE_mathFunctionExpression = 11, 
          RULE_program = 12, RULE_declAssignStatement = 13, RULE_assignStatement = 14, 
          RULE_writeStatement = 15, RULE_type = 16, RULE_assignment = 17, 
          RULE_mathExpression = 18, RULE_variableAccessor = 19;
class CFloor4Parser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
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
                   TOKEN_Comparator = 24, TOKEN_Primitive = 25, TOKEN_Number = 26, 
                   TOKEN_MathOperator = 27, TOKEN_StringLiteral = 28, TOKEN_WS = 29, 
                   TOKEN_Identifier = 30;

  @override
  final List<String> ruleNames = [
    'expression', 'booleanOperand', 'booleanExpression', 'block', 'ifStatement', 
    'elseBlock', 'ifBlock', 'statement', 'mathOperand', 'stringLengthExpression', 
    'readFunctionExpression', 'mathFunctionExpression', 'program', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'type', 'assignment', 'mathExpression', 
    'variableAccessor'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'{'", "'}'", "'if'", "'else'", "'length('", "'read_int()'", 
      "'read_float()'", "'read_string()'", "'floor'", "'ceil'", "'round'", 
      "'sqrt'", "'sin'", "'cos'", "'tan'", "';'", "'write'", "'='", null, 
      "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, "BinaryBooleanOperator", 
      "UnaryBooleanOperator", "BooleanLiteral", "Comparator", "Primitive", 
      "Number", "MathOperator", "StringLiteral", "WS", "Identifier"
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

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 0, RULE_expression);
    try {
      state = 44;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 0, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 40;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 41;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 42;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 43;
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

  BooleanOperandContext booleanOperand() {
    dynamic _localctx = BooleanOperandContext(context, state);
    enterRule(_localctx, 2, RULE_booleanOperand);
    try {
      state = 52;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 46;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 47;
        variableAccessor();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 48;
        match(TOKEN_T__0);
        state = 49;
        booleanExpression();
        state = 50;
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
    enterRule(_localctx, 4, RULE_booleanExpression);
    int _la;
    try {
      state = 65;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 54;
        match(TOKEN_UnaryBooleanOperator);
        state = 55;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 56;
        mathOperand();
        state = 57;
        match(TOKEN_Comparator);
        state = 58;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 60;
        booleanOperand();
        state = 63;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 61;
          match(TOKEN_BinaryBooleanOperator);
          state = 62;
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

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 6, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 67;
      match(TOKEN_T__2);
      state = 69; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 68;
        statement();
        state = 71; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1107820576) != 0));
      state = 73;
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

  IfStatementContext ifStatement() {
    dynamic _localctx = IfStatementContext(context, state);
    enterRule(_localctx, 8, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 75;
      match(TOKEN_T__4);
      state = 76;
      match(TOKEN_T__0);
      state = 77;
      booleanExpression();
      state = 78;
      match(TOKEN_T__1);
      state = 79;
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
      state = 81;
      match(TOKEN_T__5);
      state = 82;
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
      state = 84;
      ifStatement();
      state = 89;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 85;
          match(TOKEN_T__5);
          state = 86;
          ifStatement(); 
        }
        state = 91;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
      }
      state = 93;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__5) {
        state = 92;
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
      state = 99;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__18:
        enterOuterAlt(_localctx, 1);
        state = 95;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 96;
        assignStatement();
        break;
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 3);
        state = 97;
        declAssignStatement();
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 4);
        state = 98;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 16, RULE_mathOperand);
    try {
      state = 109;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 101;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 102;
        variableAccessor();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 3);
        state = 103;
        match(TOKEN_T__0);
        state = 104;
        mathExpression();
        state = 105;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__10:
      case TOKEN_T__11:
      case TOKEN_T__12:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
        enterOuterAlt(_localctx, 4);
        state = 107;
        mathFunctionExpression();
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 5);
        state = 108;
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
    enterRule(_localctx, 18, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 111;
      match(TOKEN_T__6);
      state = 112;
      variableAccessor();
      state = 113;
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

  ReadFunctionExpressionContext readFunctionExpression() {
    dynamic _localctx = ReadFunctionExpressionContext(context, state);
    enterRule(_localctx, 20, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 115;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1792) != 0))) {
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
      state = 117;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 260096) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 118;
      match(TOKEN_T__0);
      state = 119;
      mathExpression();
      state = 120;
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
    enterRule(_localctx, 24, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 123; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 122;
        statement();
        state = 125; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1107820576) != 0));
      state = 127;
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
    enterRule(_localctx, 26, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 129;
      type();
      state = 130;
      assignment();
      state = 131;
      match(TOKEN_T__17);
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
      state = 133;
      assignment();
      state = 134;
      match(TOKEN_T__17);
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
    try {
      enterOuterAlt(_localctx, 1);
      state = 136;
      match(TOKEN_T__18);
      state = 137;
      match(TOKEN_T__0);
      state = 141;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 138;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 139;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 140;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 143;
      match(TOKEN_T__1);
      state = 144;
      match(TOKEN_T__17);
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
    enterRule(_localctx, 32, RULE_type);
    try {
      enterOuterAlt(_localctx, 1);
      state = 146;
      match(TOKEN_Primitive);
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
    enterRule(_localctx, 34, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 148;
      match(TOKEN_Identifier);
      state = 149;
      match(TOKEN_T__19);
      state = 150;
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 36, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 152;
      mathOperand();
      state = 155;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 153;
        match(TOKEN_MathOperator);
        state = 154;
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 38, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 157;
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

  static const List<int> _serializedATN = [
      4,1,30,160,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,1,0,1,0,
      1,0,1,0,3,0,45,8,0,1,1,1,1,1,1,1,1,1,1,1,1,3,1,53,8,1,1,2,1,2,1,2,
      1,2,1,2,1,2,1,2,1,2,1,2,3,2,64,8,2,3,2,66,8,2,1,3,1,3,4,3,70,8,3,11,
      3,12,3,71,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,6,1,6,1,6,
      5,6,88,8,6,10,6,12,6,91,9,6,1,6,3,6,94,8,6,1,7,1,7,1,7,1,7,3,7,100,
      8,7,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,3,8,110,8,8,1,9,1,9,1,9,1,9,1,
      10,1,10,1,11,1,11,1,11,1,11,1,11,1,12,4,12,124,8,12,11,12,12,12,125,
      1,12,1,12,1,13,1,13,1,13,1,13,1,14,1,14,1,14,1,15,1,15,1,15,1,15,1,
      15,3,15,142,8,15,1,15,1,15,1,15,1,16,1,16,1,17,1,17,1,17,1,17,1,18,
      1,18,1,18,3,18,156,8,18,1,19,1,19,1,19,0,0,20,0,2,4,6,8,10,12,14,16,
      18,20,22,24,26,28,30,32,34,36,38,0,2,1,0,8,10,1,0,11,17,161,0,44,1,
      0,0,0,2,52,1,0,0,0,4,65,1,0,0,0,6,67,1,0,0,0,8,75,1,0,0,0,10,81,1,
      0,0,0,12,84,1,0,0,0,14,99,1,0,0,0,16,109,1,0,0,0,18,111,1,0,0,0,20,
      115,1,0,0,0,22,117,1,0,0,0,24,123,1,0,0,0,26,129,1,0,0,0,28,133,1,
      0,0,0,30,136,1,0,0,0,32,146,1,0,0,0,34,148,1,0,0,0,36,152,1,0,0,0,
      38,157,1,0,0,0,40,45,3,36,18,0,41,45,3,20,10,0,42,45,5,28,0,0,43,45,
      3,4,2,0,44,40,1,0,0,0,44,41,1,0,0,0,44,42,1,0,0,0,44,43,1,0,0,0,45,
      1,1,0,0,0,46,53,5,23,0,0,47,53,3,38,19,0,48,49,5,1,0,0,49,50,3,4,2,
      0,50,51,5,2,0,0,51,53,1,0,0,0,52,46,1,0,0,0,52,47,1,0,0,0,52,48,1,
      0,0,0,53,3,1,0,0,0,54,55,5,22,0,0,55,66,3,2,1,0,56,57,3,16,8,0,57,
      58,5,24,0,0,58,59,3,16,8,0,59,66,1,0,0,0,60,63,3,2,1,0,61,62,5,21,
      0,0,62,64,3,2,1,0,63,61,1,0,0,0,63,64,1,0,0,0,64,66,1,0,0,0,65,54,
      1,0,0,0,65,56,1,0,0,0,65,60,1,0,0,0,66,5,1,0,0,0,67,69,5,3,0,0,68,
      70,3,14,7,0,69,68,1,0,0,0,70,71,1,0,0,0,71,69,1,0,0,0,71,72,1,0,0,
      0,72,73,1,0,0,0,73,74,5,4,0,0,74,7,1,0,0,0,75,76,5,5,0,0,76,77,5,1,
      0,0,77,78,3,4,2,0,78,79,5,2,0,0,79,80,3,6,3,0,80,9,1,0,0,0,81,82,5,
      6,0,0,82,83,3,6,3,0,83,11,1,0,0,0,84,89,3,8,4,0,85,86,5,6,0,0,86,88,
      3,8,4,0,87,85,1,0,0,0,88,91,1,0,0,0,89,87,1,0,0,0,89,90,1,0,0,0,90,
      93,1,0,0,0,91,89,1,0,0,0,92,94,3,10,5,0,93,92,1,0,0,0,93,94,1,0,0,
      0,94,13,1,0,0,0,95,100,3,30,15,0,96,100,3,28,14,0,97,100,3,26,13,0,
      98,100,3,12,6,0,99,95,1,0,0,0,99,96,1,0,0,0,99,97,1,0,0,0,99,98,1,
      0,0,0,100,15,1,0,0,0,101,110,5,26,0,0,102,110,3,38,19,0,103,104,5,
      1,0,0,104,105,3,36,18,0,105,106,5,2,0,0,106,110,1,0,0,0,107,110,3,
      22,11,0,108,110,3,18,9,0,109,101,1,0,0,0,109,102,1,0,0,0,109,103,1,
      0,0,0,109,107,1,0,0,0,109,108,1,0,0,0,110,17,1,0,0,0,111,112,5,7,0,
      0,112,113,3,38,19,0,113,114,5,2,0,0,114,19,1,0,0,0,115,116,7,0,0,0,
      116,21,1,0,0,0,117,118,7,1,0,0,118,119,5,1,0,0,119,120,3,36,18,0,120,
      121,5,2,0,0,121,23,1,0,0,0,122,124,3,14,7,0,123,122,1,0,0,0,124,125,
      1,0,0,0,125,123,1,0,0,0,125,126,1,0,0,0,126,127,1,0,0,0,127,128,5,
      0,0,1,128,25,1,0,0,0,129,130,3,32,16,0,130,131,3,34,17,0,131,132,5,
      18,0,0,132,27,1,0,0,0,133,134,3,34,17,0,134,135,5,18,0,0,135,29,1,
      0,0,0,136,137,5,19,0,0,137,141,5,1,0,0,138,142,3,38,19,0,139,142,5,
      26,0,0,140,142,5,28,0,0,141,138,1,0,0,0,141,139,1,0,0,0,141,140,1,
      0,0,0,142,143,1,0,0,0,143,144,5,2,0,0,144,145,5,18,0,0,145,31,1,0,
      0,0,146,147,5,25,0,0,147,33,1,0,0,0,148,149,5,30,0,0,149,150,5,20,
      0,0,150,151,3,0,0,0,151,35,1,0,0,0,152,155,3,16,8,0,153,154,5,27,0,
      0,154,156,3,16,8,0,155,153,1,0,0,0,155,156,1,0,0,0,156,37,1,0,0,0,
      157,158,5,30,0,0,158,39,1,0,0,0,12,44,52,63,65,71,89,93,99,109,125,
      141,155
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
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

class TypeContext extends ParserRuleContext {
  TerminalNode? Primitive() => getToken(CFloor4Parser.TOKEN_Primitive, 0);
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

