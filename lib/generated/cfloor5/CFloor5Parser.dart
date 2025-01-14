// Generated from grammars/CFloor5.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor5Listener.dart';
import 'CFloor5BaseListener.dart';
const int RULE_whileLoop = 0, RULE_statement = 1, RULE_expression = 2, RULE_primitive = 3, 
          RULE_booleanOperand = 4, RULE_booleanExpression = 5, RULE_block = 6, 
          RULE_ifStatement = 7, RULE_elseBlock = 8, RULE_ifBlock = 9, RULE_mathOperand = 10, 
          RULE_stringLengthExpression = 11, RULE_readFunctionExpression = 12, 
          RULE_mathFunctionExpression = 13, RULE_program = 14, RULE_declAssignStatement = 15, 
          RULE_assignStatement = 16, RULE_writeStatement = 17, RULE_type = 18, 
          RULE_assignment = 19, RULE_mathExpression = 20, RULE_variableAccessor = 21;
class CFloor5Parser extends Parser {
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
                   TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_T__20 = 21, 
                   TOKEN_T__21 = 22, TOKEN_T__22 = 23, TOKEN_T__23 = 24, 
                   TOKEN_T__24 = 25, TOKEN_BinaryBooleanOperator = 26, TOKEN_UnaryBooleanOperator = 27, 
                   TOKEN_BooleanLiteral = 28, TOKEN_Comparator = 29, TOKEN_Number = 30, 
                   TOKEN_MathOperator = 31, TOKEN_StringLiteral = 32, TOKEN_WS = 33, 
                   TOKEN_Identifier = 34;

  @override
  final List<String> ruleNames = [
    'whileLoop', 'statement', 'expression', 'primitive', 'booleanOperand', 
    'booleanExpression', 'block', 'ifStatement', 'elseBlock', 'ifBlock', 
    'mathOperand', 'stringLengthExpression', 'readFunctionExpression', 'mathFunctionExpression', 
    'program', 'declAssignStatement', 'assignStatement', 'writeStatement', 
    'type', 'assignment', 'mathExpression', 'variableAccessor'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'while'", "'('", "')'", "'int'", "'float'", "'string'", "'bool'", 
      "'{'", "'}'", "'if'", "'else'", "'length('", "'read_int()'", "'read_float()'", 
      "'read_string()'", "'floor'", "'ceil'", "'round'", "'sqrt'", "'sin'", 
      "'cos'", "'tan'", "';'", "'write'", "'='", null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, "BinaryBooleanOperator", "UnaryBooleanOperator", 
      "BooleanLiteral", "Comparator", "Number", "MathOperator", "StringLiteral", 
      "WS", "Identifier"
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
      state = 44;
      match(TOKEN_T__0);
      state = 45;
      match(TOKEN_T__1);
      state = 46;
      booleanExpression();
      state = 47;
      match(TOKEN_T__2);
      state = 48;
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
      state = 55;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__23:
        enterOuterAlt(_localctx, 1);
        state = 50;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 51;
        assignStatement();
        break;
      case TOKEN_T__3:
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 3);
        state = 52;
        declAssignStatement();
        break;
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 4);
        state = 53;
        ifBlock();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 5);
        state = 54;
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

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 4, RULE_expression);
    try {
      state = 61;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 1, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 57;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 58;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 59;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
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

  PrimitiveContext primitive() {
    dynamic _localctx = PrimitiveContext(context, state);
    enterRule(_localctx, 6, RULE_primitive);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 63;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 240) != 0))) {
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
    enterRule(_localctx, 8, RULE_booleanOperand);
    try {
      state = 71;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 65;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 66;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 67;
        match(TOKEN_T__1);
        state = 68;
        booleanExpression();
        state = 69;
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
    enterRule(_localctx, 10, RULE_booleanExpression);
    int _la;
    try {
      state = 84;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 73;
        match(TOKEN_UnaryBooleanOperator);
        state = 74;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 75;
        mathOperand();
        state = 76;
        match(TOKEN_Comparator);
        state = 77;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 79;
        booleanOperand();
        state = 82;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 80;
          match(TOKEN_BinaryBooleanOperator);
          state = 81;
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
    enterRule(_localctx, 12, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 86;
      match(TOKEN_T__7);
      state = 88; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 87;
        statement();
        state = 90; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 17196647666) != 0));
      state = 92;
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
    enterRule(_localctx, 14, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 94;
      match(TOKEN_T__9);
      state = 95;
      match(TOKEN_T__1);
      state = 96;
      booleanExpression();
      state = 97;
      match(TOKEN_T__2);
      state = 98;
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
    enterRule(_localctx, 16, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 100;
      match(TOKEN_T__10);
      state = 101;
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
    enterRule(_localctx, 18, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 103;
      ifStatement();
      state = 108;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 104;
          match(TOKEN_T__10);
          state = 105;
          ifStatement(); 
        }
        state = 110;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
      }
      state = 112;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__10) {
        state = 111;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 20, RULE_mathOperand);
    try {
      state = 122;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 114;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 115;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 116;
        match(TOKEN_T__1);
        state = 117;
        mathExpression();
        state = 118;
        match(TOKEN_T__2);
        break;
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
        enterOuterAlt(_localctx, 4);
        state = 120;
        mathFunctionExpression();
        break;
      case TOKEN_T__11:
        enterOuterAlt(_localctx, 5);
        state = 121;
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
    enterRule(_localctx, 22, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 124;
      match(TOKEN_T__11);
      state = 125;
      variableAccessor();
      state = 126;
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

  ReadFunctionExpressionContext readFunctionExpression() {
    dynamic _localctx = ReadFunctionExpressionContext(context, state);
    enterRule(_localctx, 24, RULE_readFunctionExpression);
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
    enterRule(_localctx, 26, RULE_mathFunctionExpression);
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
      match(TOKEN_T__1);
      state = 132;
      mathExpression();
      state = 133;
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 28, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 136; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 135;
        statement();
        state = 138; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 17196647666) != 0));
      state = 140;
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
    enterRule(_localctx, 30, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 142;
      type();
      state = 143;
      assignment();
      state = 144;
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
      state = 146;
      assignment();
      state = 147;
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
      state = 149;
      match(TOKEN_T__23);
      state = 150;
      match(TOKEN_T__1);
      state = 154;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 151;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 152;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 153;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 156;
      match(TOKEN_T__2);
      state = 157;
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 36, RULE_type);
    try {
      enterOuterAlt(_localctx, 1);
      state = 159;
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
    enterRule(_localctx, 38, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 161;
      match(TOKEN_Identifier);
      state = 162;
      match(TOKEN_T__24);
      state = 163;
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
    enterRule(_localctx, 40, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 165;
      mathOperand();
      state = 168;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 166;
        match(TOKEN_MathOperator);
        state = 167;
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
    enterRule(_localctx, 42, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 170;
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
      4,1,34,173,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,1,0,1,0,1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,1,1,1,3,1,56,8,1,1,
      2,1,2,1,2,1,2,3,2,62,8,2,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,3,4,72,8,
      4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,83,8,5,3,5,85,8,5,1,6,1,
      6,4,6,89,8,6,11,6,12,6,90,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,7,1,8,1,8,
      1,8,1,9,1,9,1,9,5,9,107,8,9,10,9,12,9,110,9,9,1,9,3,9,113,8,9,1,10,
      1,10,1,10,1,10,1,10,1,10,1,10,1,10,3,10,123,8,10,1,11,1,11,1,11,1,
      11,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,14,4,14,137,8,14,11,14,12,
      14,138,1,14,1,14,1,15,1,15,1,15,1,15,1,16,1,16,1,16,1,17,1,17,1,17,
      1,17,1,17,3,17,155,8,17,1,17,1,17,1,17,1,18,1,18,1,19,1,19,1,19,1,
      19,1,20,1,20,1,20,3,20,169,8,20,1,21,1,21,1,21,0,0,22,0,2,4,6,8,10,
      12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,0,3,1,0,4,7,1,0,13,
      15,1,0,16,22,173,0,44,1,0,0,0,2,55,1,0,0,0,4,61,1,0,0,0,6,63,1,0,0,
      0,8,71,1,0,0,0,10,84,1,0,0,0,12,86,1,0,0,0,14,94,1,0,0,0,16,100,1,
      0,0,0,18,103,1,0,0,0,20,122,1,0,0,0,22,124,1,0,0,0,24,128,1,0,0,0,
      26,130,1,0,0,0,28,136,1,0,0,0,30,142,1,0,0,0,32,146,1,0,0,0,34,149,
      1,0,0,0,36,159,1,0,0,0,38,161,1,0,0,0,40,165,1,0,0,0,42,170,1,0,0,
      0,44,45,5,1,0,0,45,46,5,2,0,0,46,47,3,10,5,0,47,48,5,3,0,0,48,49,3,
      12,6,0,49,1,1,0,0,0,50,56,3,34,17,0,51,56,3,32,16,0,52,56,3,30,15,
      0,53,56,3,18,9,0,54,56,3,0,0,0,55,50,1,0,0,0,55,51,1,0,0,0,55,52,1,
      0,0,0,55,53,1,0,0,0,55,54,1,0,0,0,56,3,1,0,0,0,57,62,3,40,20,0,58,
      62,3,24,12,0,59,62,5,32,0,0,60,62,3,10,5,0,61,57,1,0,0,0,61,58,1,0,
      0,0,61,59,1,0,0,0,61,60,1,0,0,0,62,5,1,0,0,0,63,64,7,0,0,0,64,7,1,
      0,0,0,65,72,5,28,0,0,66,72,3,42,21,0,67,68,5,2,0,0,68,69,3,10,5,0,
      69,70,5,3,0,0,70,72,1,0,0,0,71,65,1,0,0,0,71,66,1,0,0,0,71,67,1,0,
      0,0,72,9,1,0,0,0,73,74,5,27,0,0,74,85,3,8,4,0,75,76,3,20,10,0,76,77,
      5,29,0,0,77,78,3,20,10,0,78,85,1,0,0,0,79,82,3,8,4,0,80,81,5,26,0,
      0,81,83,3,8,4,0,82,80,1,0,0,0,82,83,1,0,0,0,83,85,1,0,0,0,84,73,1,
      0,0,0,84,75,1,0,0,0,84,79,1,0,0,0,85,11,1,0,0,0,86,88,5,8,0,0,87,89,
      3,2,1,0,88,87,1,0,0,0,89,90,1,0,0,0,90,88,1,0,0,0,90,91,1,0,0,0,91,
      92,1,0,0,0,92,93,5,9,0,0,93,13,1,0,0,0,94,95,5,10,0,0,95,96,5,2,0,
      0,96,97,3,10,5,0,97,98,5,3,0,0,98,99,3,12,6,0,99,15,1,0,0,0,100,101,
      5,11,0,0,101,102,3,12,6,0,102,17,1,0,0,0,103,108,3,14,7,0,104,105,
      5,11,0,0,105,107,3,14,7,0,106,104,1,0,0,0,107,110,1,0,0,0,108,106,
      1,0,0,0,108,109,1,0,0,0,109,112,1,0,0,0,110,108,1,0,0,0,111,113,3,
      16,8,0,112,111,1,0,0,0,112,113,1,0,0,0,113,19,1,0,0,0,114,123,5,30,
      0,0,115,123,3,42,21,0,116,117,5,2,0,0,117,118,3,40,20,0,118,119,5,
      3,0,0,119,123,1,0,0,0,120,123,3,26,13,0,121,123,3,22,11,0,122,114,
      1,0,0,0,122,115,1,0,0,0,122,116,1,0,0,0,122,120,1,0,0,0,122,121,1,
      0,0,0,123,21,1,0,0,0,124,125,5,12,0,0,125,126,3,42,21,0,126,127,5,
      3,0,0,127,23,1,0,0,0,128,129,7,1,0,0,129,25,1,0,0,0,130,131,7,2,0,
      0,131,132,5,2,0,0,132,133,3,40,20,0,133,134,5,3,0,0,134,27,1,0,0,0,
      135,137,3,2,1,0,136,135,1,0,0,0,137,138,1,0,0,0,138,136,1,0,0,0,138,
      139,1,0,0,0,139,140,1,0,0,0,140,141,5,0,0,1,141,29,1,0,0,0,142,143,
      3,36,18,0,143,144,3,38,19,0,144,145,5,23,0,0,145,31,1,0,0,0,146,147,
      3,38,19,0,147,148,5,23,0,0,148,33,1,0,0,0,149,150,5,24,0,0,150,154,
      5,2,0,0,151,155,3,42,21,0,152,155,5,30,0,0,153,155,5,32,0,0,154,151,
      1,0,0,0,154,152,1,0,0,0,154,153,1,0,0,0,155,156,1,0,0,0,156,157,5,
      3,0,0,157,158,5,23,0,0,158,35,1,0,0,0,159,160,3,6,3,0,160,37,1,0,0,
      0,161,162,5,34,0,0,162,163,5,25,0,0,163,164,3,4,2,0,164,39,1,0,0,0,
      165,168,3,20,10,0,166,167,5,31,0,0,167,169,3,20,10,0,168,166,1,0,0,
      0,168,169,1,0,0,0,169,41,1,0,0,0,170,171,5,34,0,0,171,43,1,0,0,0,12,
      55,61,71,82,84,90,108,112,122,138,154,168
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

class ExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor5Parser.TOKEN_StringLiteral, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitExpression(this);
  }
}

class PrimitiveContext extends ParserRuleContext {
  PrimitiveContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primitive;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterPrimitive(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitPrimitive(this);
  }
}

class BooleanOperandContext extends ParserRuleContext {
  TerminalNode? BooleanLiteral() => getToken(CFloor5Parser.TOKEN_BooleanLiteral, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor5Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class StringLengthExpressionContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class DeclAssignStatementContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
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
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
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

class TypeContext extends ParserRuleContext {
  PrimitiveContext? primitive() => getRuleContext<PrimitiveContext>(0);
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitType(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor5Parser.TOKEN_Identifier, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor5Parser.TOKEN_Identifier, 0);
  VariableAccessorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableAccessor;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.enterVariableAccessor(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor5Listener) listener.exitVariableAccessor(this);
  }
}

