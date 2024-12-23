// Generated from grammars/CFloor6.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor6Listener.dart';
import 'CFloor6BaseListener.dart';
const int RULE_statement = 0, RULE_forLoop = 1, RULE_type = 2, RULE_expression = 3, 
          RULE_arrayInitializer = 4, RULE_arrayLiteral = 5, RULE_arrayLiteralElement = 6, 
          RULE_assignment = 7, RULE_variableAccessor = 8, RULE_typedAssignment = 9, 
          RULE_whileLoop = 10, RULE_primitive = 11, RULE_booleanOperand = 12, 
          RULE_booleanExpression = 13, RULE_block = 14, RULE_ifStatement = 15, 
          RULE_elseBlock = 16, RULE_ifBlock = 17, RULE_mathOperand = 18, 
          RULE_stringLengthExpression = 19, RULE_readFunctionExpression = 20, 
          RULE_mathFunctionExpression = 21, RULE_program = 22, RULE_declAssignStatement = 23, 
          RULE_assignStatement = 24, RULE_writeStatement = 25, RULE_mathExpression = 26;
class CFloor6Parser extends Parser {
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
                   TOKEN_T__24 = 25, TOKEN_T__25 = 26, TOKEN_T__26 = 27, 
                   TOKEN_T__27 = 28, TOKEN_T__28 = 29, TOKEN_T__29 = 30, 
                   TOKEN_T__30 = 31, TOKEN_BinaryBooleanOperator = 32, TOKEN_UnaryBooleanOperator = 33, 
                   TOKEN_BooleanLiteral = 34, TOKEN_Comparator = 35, TOKEN_Number = 36, 
                   TOKEN_MathOperator = 37, TOKEN_StringLiteral = 38, TOKEN_WS = 39, 
                   TOKEN_Identifier = 40;

  @override
  final List<String> ruleNames = [
    'statement', 'forLoop', 'type', 'expression', 'arrayInitializer', 'arrayLiteral', 
    'arrayLiteralElement', 'assignment', 'variableAccessor', 'typedAssignment', 
    'whileLoop', 'primitive', 'booleanOperand', 'booleanExpression', 'block', 
    'ifStatement', 'elseBlock', 'ifBlock', 'mathOperand', 'stringLengthExpression', 
    'readFunctionExpression', 'mathFunctionExpression', 'program', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'for'", "'('", "';'", "')'", "'array<'", "'>'", "'['", "']'", 
      "'{'", "'}'", "','", "'='", "'while'", "'int'", "'float'", "'string'", 
      "'bool'", "'if'", "'else'", "'length('", "'read_int()'", "'read_float()'", 
      "'read_string()'", "'floor'", "'ceil'", "'round'", "'sqrt'", "'sin'", 
      "'cos'", "'tan'", "'write'", null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, "BinaryBooleanOperator", 
      "UnaryBooleanOperator", "BooleanLiteral", "Comparator", "Number", 
      "MathOperator", "StringLiteral", "WS", "Identifier"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'CFloor6.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  CFloor6Parser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 0, RULE_statement);
    try {
      state = 60;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__30:
        enterOuterAlt(_localctx, 1);
        state = 54;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 55;
        assignStatement();
        break;
      case TOKEN_T__4:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
        enterOuterAlt(_localctx, 3);
        state = 56;
        declAssignStatement();
        break;
      case TOKEN_T__17:
        enterOuterAlt(_localctx, 4);
        state = 57;
        ifBlock();
        break;
      case TOKEN_T__12:
        enterOuterAlt(_localctx, 5);
        state = 58;
        whileLoop();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 6);
        state = 59;
        forLoop();
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

  ForLoopContext forLoop() {
    dynamic _localctx = ForLoopContext(context, state);
    enterRule(_localctx, 2, RULE_forLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 62;
      match(TOKEN_T__0);
      state = 63;
      match(TOKEN_T__1);
      state = 64;
      typedAssignment();
      state = 65;
      match(TOKEN_T__2);
      state = 66;
      booleanExpression();
      state = 67;
      match(TOKEN_T__2);
      state = 68;
      assignment();
      state = 69;
      match(TOKEN_T__3);
      state = 70;
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 4, RULE_type);
    try {
      state = 77;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
        enterOuterAlt(_localctx, 1);
        state = 72;
        primitive();
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 2);
        state = 73;
        match(TOKEN_T__4);
        state = 74;
        primitive();
        state = 75;
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

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 6, RULE_expression);
    try {
      state = 85;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 79;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 80;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 81;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 82;
        booleanExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 83;
        arrayInitializer();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 84;
        arrayLiteral();
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

  ArrayInitializerContext arrayInitializer() {
    dynamic _localctx = ArrayInitializerContext(context, state);
    enterRule(_localctx, 8, RULE_arrayInitializer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 87;
      match(TOKEN_T__4);
      state = 88;
      primitive();
      state = 89;
      match(TOKEN_T__5);
      state = 90;
      match(TOKEN_T__6);
      state = 91;
      match(TOKEN_Number);
      state = 92;
      match(TOKEN_T__7);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArrayLiteralContext arrayLiteral() {
    dynamic _localctx = ArrayLiteralContext(context, state);
    enterRule(_localctx, 10, RULE_arrayLiteral);
    int _la;
    try {
      state = 107;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 94;
        match(TOKEN_T__8);
        state = 95;
        match(TOKEN_T__9);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 96;
        match(TOKEN_T__8);
        state = 97;
        arrayLiteralElement();
        state = 102;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__10) {
          state = 98;
          match(TOKEN_T__10);
          state = 99;
          arrayLiteralElement();
          state = 104;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 105;
        match(TOKEN_T__9);
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

  ArrayLiteralElementContext arrayLiteralElement() {
    dynamic _localctx = ArrayLiteralElementContext(context, state);
    enterRule(_localctx, 12, RULE_arrayLiteralElement);
    try {
      state = 114;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 109;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 2);
        state = 110;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 3);
        state = 111;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__8:
        enterOuterAlt(_localctx, 4);
        state = 112;
        arrayLiteral();
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 5);
        state = 113;
        arrayInitializer();
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
    enterRule(_localctx, 14, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 116;
      variableAccessor();
      state = 117;
      match(TOKEN_T__11);
      state = 118;
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 16, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 120;
      match(TOKEN_Identifier);
      state = 125;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__6) {
        state = 121;
        match(TOKEN_T__6);
        state = 122;
        mathExpression();
        state = 123;
        match(TOKEN_T__7);
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

  TypedAssignmentContext typedAssignment() {
    dynamic _localctx = TypedAssignmentContext(context, state);
    enterRule(_localctx, 18, RULE_typedAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 127;
      type();
      state = 128;
      assignment();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhileLoopContext whileLoop() {
    dynamic _localctx = WhileLoopContext(context, state);
    enterRule(_localctx, 20, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 130;
      match(TOKEN_T__12);
      state = 131;
      match(TOKEN_T__1);
      state = 132;
      booleanExpression();
      state = 133;
      match(TOKEN_T__3);
      state = 134;
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

  PrimitiveContext primitive() {
    dynamic _localctx = PrimitiveContext(context, state);
    enterRule(_localctx, 22, RULE_primitive);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 136;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 245760) != 0))) {
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
    enterRule(_localctx, 24, RULE_booleanOperand);
    try {
      state = 144;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 138;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 139;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 140;
        match(TOKEN_T__1);
        state = 141;
        booleanExpression();
        state = 142;
        match(TOKEN_T__3);
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
    enterRule(_localctx, 26, RULE_booleanExpression);
    int _la;
    try {
      state = 157;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 9, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 146;
        match(TOKEN_UnaryBooleanOperator);
        state = 147;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 148;
        mathOperand();
        state = 149;
        match(TOKEN_Comparator);
        state = 150;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 152;
        booleanOperand();
        state = 155;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 153;
          match(TOKEN_BinaryBooleanOperator);
          state = 154;
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
    enterRule(_localctx, 28, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 159;
      match(TOKEN_T__8);
      state = 161; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 160;
        statement();
        state = 163; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1101659627554) != 0));
      state = 165;
      match(TOKEN_T__9);
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
    enterRule(_localctx, 30, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 167;
      match(TOKEN_T__17);
      state = 168;
      match(TOKEN_T__1);
      state = 169;
      booleanExpression();
      state = 170;
      match(TOKEN_T__3);
      state = 171;
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
    enterRule(_localctx, 32, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 173;
      match(TOKEN_T__18);
      state = 174;
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
    enterRule(_localctx, 34, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 176;
      ifStatement();
      state = 181;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 177;
          match(TOKEN_T__18);
          state = 178;
          ifStatement(); 
        }
        state = 183;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
      }
      state = 185;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__18) {
        state = 184;
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
    enterRule(_localctx, 36, RULE_mathOperand);
    try {
      state = 195;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 187;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 188;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 189;
        match(TOKEN_T__1);
        state = 190;
        mathExpression();
        state = 191;
        match(TOKEN_T__3);
        break;
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
      case TOKEN_T__26:
      case TOKEN_T__27:
      case TOKEN_T__28:
      case TOKEN_T__29:
        enterOuterAlt(_localctx, 4);
        state = 193;
        mathFunctionExpression();
        break;
      case TOKEN_T__19:
        enterOuterAlt(_localctx, 5);
        state = 194;
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
    enterRule(_localctx, 38, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 197;
      match(TOKEN_T__19);
      state = 198;
      variableAccessor();
      state = 199;
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
    enterRule(_localctx, 40, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 201;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 14680064) != 0))) {
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
    enterRule(_localctx, 42, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 203;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2130706432) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 204;
      match(TOKEN_T__1);
      state = 205;
      mathExpression();
      state = 206;
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 44, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 209; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 208;
        statement();
        state = 211; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1101659627554) != 0));
      state = 213;
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
    enterRule(_localctx, 46, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 215;
      type();
      state = 216;
      assignment();
      state = 217;
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

  AssignStatementContext assignStatement() {
    dynamic _localctx = AssignStatementContext(context, state);
    enterRule(_localctx, 48, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 219;
      assignment();
      state = 220;
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

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 50, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 222;
      match(TOKEN_T__30);
      state = 223;
      match(TOKEN_T__1);
      state = 227;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 224;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 225;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 226;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 229;
      match(TOKEN_T__3);
      state = 230;
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 52, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 232;
      mathOperand();
      state = 235;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 233;
        match(TOKEN_MathOperator);
        state = 234;
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
      4,1,40,238,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,1,0,1,
      0,1,0,1,0,1,0,1,0,3,0,61,8,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,2,1,2,1,2,1,2,1,2,3,2,78,8,2,1,3,1,3,1,3,1,3,1,3,1,3,3,3,86,8,
      3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,5,5,101,8,5,
      10,5,12,5,104,9,5,1,5,1,5,3,5,108,8,5,1,6,1,6,1,6,1,6,1,6,3,6,115,
      8,6,1,7,1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,3,8,126,8,8,1,9,1,9,1,9,1,
      10,1,10,1,10,1,10,1,10,1,10,1,11,1,11,1,12,1,12,1,12,1,12,1,12,1,12,
      3,12,145,8,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,3,13,156,
      8,13,3,13,158,8,13,1,14,1,14,4,14,162,8,14,11,14,12,14,163,1,14,1,
      14,1,15,1,15,1,15,1,15,1,15,1,15,1,16,1,16,1,16,1,17,1,17,1,17,5,17,
      180,8,17,10,17,12,17,183,9,17,1,17,3,17,186,8,17,1,18,1,18,1,18,1,
      18,1,18,1,18,1,18,1,18,3,18,196,8,18,1,19,1,19,1,19,1,19,1,20,1,20,
      1,21,1,21,1,21,1,21,1,21,1,22,4,22,210,8,22,11,22,12,22,211,1,22,1,
      22,1,23,1,23,1,23,1,23,1,24,1,24,1,24,1,25,1,25,1,25,1,25,1,25,3,25,
      228,8,25,1,25,1,25,1,25,1,26,1,26,1,26,3,26,236,8,26,1,26,0,0,27,0,
      2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,
      50,52,0,3,1,0,14,17,1,0,21,23,1,0,24,30,244,0,60,1,0,0,0,2,62,1,0,
      0,0,4,77,1,0,0,0,6,85,1,0,0,0,8,87,1,0,0,0,10,107,1,0,0,0,12,114,1,
      0,0,0,14,116,1,0,0,0,16,120,1,0,0,0,18,127,1,0,0,0,20,130,1,0,0,0,
      22,136,1,0,0,0,24,144,1,0,0,0,26,157,1,0,0,0,28,159,1,0,0,0,30,167,
      1,0,0,0,32,173,1,0,0,0,34,176,1,0,0,0,36,195,1,0,0,0,38,197,1,0,0,
      0,40,201,1,0,0,0,42,203,1,0,0,0,44,209,1,0,0,0,46,215,1,0,0,0,48,219,
      1,0,0,0,50,222,1,0,0,0,52,232,1,0,0,0,54,61,3,50,25,0,55,61,3,48,24,
      0,56,61,3,46,23,0,57,61,3,34,17,0,58,61,3,20,10,0,59,61,3,2,1,0,60,
      54,1,0,0,0,60,55,1,0,0,0,60,56,1,0,0,0,60,57,1,0,0,0,60,58,1,0,0,0,
      60,59,1,0,0,0,61,1,1,0,0,0,62,63,5,1,0,0,63,64,5,2,0,0,64,65,3,18,
      9,0,65,66,5,3,0,0,66,67,3,26,13,0,67,68,5,3,0,0,68,69,3,14,7,0,69,
      70,5,4,0,0,70,71,3,28,14,0,71,3,1,0,0,0,72,78,3,22,11,0,73,74,5,5,
      0,0,74,75,3,22,11,0,75,76,5,6,0,0,76,78,1,0,0,0,77,72,1,0,0,0,77,73,
      1,0,0,0,78,5,1,0,0,0,79,86,3,52,26,0,80,86,3,40,20,0,81,86,5,38,0,
      0,82,86,3,26,13,0,83,86,3,8,4,0,84,86,3,10,5,0,85,79,1,0,0,0,85,80,
      1,0,0,0,85,81,1,0,0,0,85,82,1,0,0,0,85,83,1,0,0,0,85,84,1,0,0,0,86,
      7,1,0,0,0,87,88,5,5,0,0,88,89,3,22,11,0,89,90,5,6,0,0,90,91,5,7,0,
      0,91,92,5,36,0,0,92,93,5,8,0,0,93,9,1,0,0,0,94,95,5,9,0,0,95,108,5,
      10,0,0,96,97,5,9,0,0,97,102,3,12,6,0,98,99,5,11,0,0,99,101,3,12,6,
      0,100,98,1,0,0,0,101,104,1,0,0,0,102,100,1,0,0,0,102,103,1,0,0,0,103,
      105,1,0,0,0,104,102,1,0,0,0,105,106,5,10,0,0,106,108,1,0,0,0,107,94,
      1,0,0,0,107,96,1,0,0,0,108,11,1,0,0,0,109,115,5,36,0,0,110,115,5,38,
      0,0,111,115,5,34,0,0,112,115,3,10,5,0,113,115,3,8,4,0,114,109,1,0,
      0,0,114,110,1,0,0,0,114,111,1,0,0,0,114,112,1,0,0,0,114,113,1,0,0,
      0,115,13,1,0,0,0,116,117,3,16,8,0,117,118,5,12,0,0,118,119,3,6,3,0,
      119,15,1,0,0,0,120,125,5,40,0,0,121,122,5,7,0,0,122,123,3,52,26,0,
      123,124,5,8,0,0,124,126,1,0,0,0,125,121,1,0,0,0,125,126,1,0,0,0,126,
      17,1,0,0,0,127,128,3,4,2,0,128,129,3,14,7,0,129,19,1,0,0,0,130,131,
      5,13,0,0,131,132,5,2,0,0,132,133,3,26,13,0,133,134,5,4,0,0,134,135,
      3,28,14,0,135,21,1,0,0,0,136,137,7,0,0,0,137,23,1,0,0,0,138,145,5,
      34,0,0,139,145,3,16,8,0,140,141,5,2,0,0,141,142,3,26,13,0,142,143,
      5,4,0,0,143,145,1,0,0,0,144,138,1,0,0,0,144,139,1,0,0,0,144,140,1,
      0,0,0,145,25,1,0,0,0,146,147,5,33,0,0,147,158,3,24,12,0,148,149,3,
      36,18,0,149,150,5,35,0,0,150,151,3,36,18,0,151,158,1,0,0,0,152,155,
      3,24,12,0,153,154,5,32,0,0,154,156,3,24,12,0,155,153,1,0,0,0,155,156,
      1,0,0,0,156,158,1,0,0,0,157,146,1,0,0,0,157,148,1,0,0,0,157,152,1,
      0,0,0,158,27,1,0,0,0,159,161,5,9,0,0,160,162,3,0,0,0,161,160,1,0,0,
      0,162,163,1,0,0,0,163,161,1,0,0,0,163,164,1,0,0,0,164,165,1,0,0,0,
      165,166,5,10,0,0,166,29,1,0,0,0,167,168,5,18,0,0,168,169,5,2,0,0,169,
      170,3,26,13,0,170,171,5,4,0,0,171,172,3,28,14,0,172,31,1,0,0,0,173,
      174,5,19,0,0,174,175,3,28,14,0,175,33,1,0,0,0,176,181,3,30,15,0,177,
      178,5,19,0,0,178,180,3,30,15,0,179,177,1,0,0,0,180,183,1,0,0,0,181,
      179,1,0,0,0,181,182,1,0,0,0,182,185,1,0,0,0,183,181,1,0,0,0,184,186,
      3,32,16,0,185,184,1,0,0,0,185,186,1,0,0,0,186,35,1,0,0,0,187,196,5,
      36,0,0,188,196,3,16,8,0,189,190,5,2,0,0,190,191,3,52,26,0,191,192,
      5,4,0,0,192,196,1,0,0,0,193,196,3,42,21,0,194,196,3,38,19,0,195,187,
      1,0,0,0,195,188,1,0,0,0,195,189,1,0,0,0,195,193,1,0,0,0,195,194,1,
      0,0,0,196,37,1,0,0,0,197,198,5,20,0,0,198,199,3,16,8,0,199,200,5,4,
      0,0,200,39,1,0,0,0,201,202,7,1,0,0,202,41,1,0,0,0,203,204,7,2,0,0,
      204,205,5,2,0,0,205,206,3,52,26,0,206,207,5,4,0,0,207,43,1,0,0,0,208,
      210,3,0,0,0,209,208,1,0,0,0,210,211,1,0,0,0,211,209,1,0,0,0,211,212,
      1,0,0,0,212,213,1,0,0,0,213,214,5,0,0,1,214,45,1,0,0,0,215,216,3,4,
      2,0,216,217,3,14,7,0,217,218,5,3,0,0,218,47,1,0,0,0,219,220,3,14,7,
      0,220,221,5,3,0,0,221,49,1,0,0,0,222,223,5,31,0,0,223,227,5,2,0,0,
      224,228,3,16,8,0,225,228,5,36,0,0,226,228,5,38,0,0,227,224,1,0,0,0,
      227,225,1,0,0,0,227,226,1,0,0,0,228,229,1,0,0,0,229,230,5,4,0,0,230,
      231,5,3,0,0,231,51,1,0,0,0,232,235,3,36,18,0,233,234,5,37,0,0,234,
      236,3,36,18,0,235,233,1,0,0,0,235,236,1,0,0,0,236,53,1,0,0,0,17,60,
      77,85,102,107,114,125,144,155,157,163,181,185,195,211,227,235
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class StatementContext extends ParserRuleContext {
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
  IfBlockContext? ifBlock() => getRuleContext<IfBlockContext>(0);
  WhileLoopContext? whileLoop() => getRuleContext<WhileLoopContext>(0);
  ForLoopContext? forLoop() => getRuleContext<ForLoopContext>(0);
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_statement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitStatement(this);
  }
}

class ForLoopContext extends ParserRuleContext {
  TypedAssignmentContext? typedAssignment() => getRuleContext<TypedAssignmentContext>(0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ForLoopContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forLoop;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterForLoop(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitForLoop(this);
  }
}

class TypeContext extends ParserRuleContext {
  PrimitiveContext? primitive() => getRuleContext<PrimitiveContext>(0);
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitType(this);
  }
}

class ExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor6Parser.TOKEN_StringLiteral, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  ArrayInitializerContext? arrayInitializer() => getRuleContext<ArrayInitializerContext>(0);
  ArrayLiteralContext? arrayLiteral() => getRuleContext<ArrayLiteralContext>(0);
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitExpression(this);
  }
}

class ArrayInitializerContext extends ParserRuleContext {
  PrimitiveContext? primitive() => getRuleContext<PrimitiveContext>(0);
  TerminalNode? Number() => getToken(CFloor6Parser.TOKEN_Number, 0);
  ArrayInitializerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayInitializer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterArrayInitializer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitArrayInitializer(this);
  }
}

class ArrayLiteralContext extends ParserRuleContext {
  List<ArrayLiteralElementContext> arrayLiteralElements() => getRuleContexts<ArrayLiteralElementContext>();
  ArrayLiteralElementContext? arrayLiteralElement(int i) => getRuleContext<ArrayLiteralElementContext>(i);
  ArrayLiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayLiteral;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterArrayLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitArrayLiteral(this);
  }
}

class ArrayLiteralElementContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor6Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor6Parser.TOKEN_StringLiteral, 0);
  TerminalNode? BooleanLiteral() => getToken(CFloor6Parser.TOKEN_BooleanLiteral, 0);
  ArrayLiteralContext? arrayLiteral() => getRuleContext<ArrayLiteralContext>(0);
  ArrayInitializerContext? arrayInitializer() => getRuleContext<ArrayInitializerContext>(0);
  ArrayLiteralElementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayLiteralElement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterArrayLiteralElement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitArrayLiteralElement(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitAssignment(this);
  }
}

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor6Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  VariableAccessorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableAccessor;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterVariableAccessor(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitVariableAccessor(this);
  }
}

class TypedAssignmentContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  TypedAssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typedAssignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterTypedAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitTypedAssignment(this);
  }
}

class WhileLoopContext extends ParserRuleContext {
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  WhileLoopContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whileLoop;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterWhileLoop(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitWhileLoop(this);
  }
}

class PrimitiveContext extends ParserRuleContext {
  PrimitiveContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primitive;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterPrimitive(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitPrimitive(this);
  }
}

class BooleanOperandContext extends ParserRuleContext {
  TerminalNode? BooleanLiteral() => getToken(CFloor6Parser.TOKEN_BooleanLiteral, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  BooleanOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_booleanOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterBooleanOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitBooleanOperand(this);
  }
}

class BooleanExpressionContext extends ParserRuleContext {
  TerminalNode? UnaryBooleanOperator() => getToken(CFloor6Parser.TOKEN_UnaryBooleanOperator, 0);
  List<BooleanOperandContext> booleanOperands() => getRuleContexts<BooleanOperandContext>();
  BooleanOperandContext? booleanOperand(int i) => getRuleContext<BooleanOperandContext>(i);
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? Comparator() => getToken(CFloor6Parser.TOKEN_Comparator, 0);
  TerminalNode? BinaryBooleanOperator() => getToken(CFloor6Parser.TOKEN_BinaryBooleanOperator, 0);
  BooleanExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_booleanExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterBooleanExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitBooleanExpression(this);
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
    if (listener is CFloor6Listener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitBlock(this);
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
    if (listener is CFloor6Listener) listener.enterIfStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitIfStatement(this);
  }
}

class ElseBlockContext extends ParserRuleContext {
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ElseBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterElseBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitElseBlock(this);
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
    if (listener is CFloor6Listener) listener.enterIfBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitIfBlock(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor6Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext? mathFunctionExpression() => getRuleContext<MathFunctionExpressionContext>(0);
  StringLengthExpressionContext? stringLengthExpression() => getRuleContext<StringLengthExpressionContext>(0);
  MathOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterMathOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitMathOperand(this);
  }
}

class StringLengthExpressionContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  StringLengthExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_stringLengthExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterStringLengthExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitStringLengthExpression(this);
  }
}

class ReadFunctionExpressionContext extends ParserRuleContext {
  ReadFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterReadFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitReadFunctionExpression(this);
  }
}

class MathFunctionExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterMathFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitMathFunctionExpression(this);
  }
}

class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(CFloor6Parser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitProgram(this);
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
    if (listener is CFloor6Listener) listener.enterDeclAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitDeclAssignStatement(this);
  }
}

class AssignStatementContext extends ParserRuleContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitAssignStatement(this);
  }
}

class WriteStatementContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  TerminalNode? Number() => getToken(CFloor6Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor6Parser.TOKEN_StringLiteral, 0);
  WriteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_writeStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterWriteStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitWriteStatement(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? MathOperator() => getToken(CFloor6Parser.TOKEN_MathOperator, 0);
  MathExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitMathExpression(this);
  }
}

