// Generated from grammars/CFloor6.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor6Listener.dart';
import 'CFloor6BaseListener.dart';
const int RULE_statement = 0, RULE_forLoop = 1, RULE_type = 2, RULE_expression = 3, 
          RULE_arrayInitializer = 4, RULE_arrayLiteral = 5, RULE_arrayLiteralElement = 6, 
          RULE_assignment = 7, RULE_arrayAccessExpression = 8, RULE_variableAccessor = 9, 
          RULE_typedAssignment = 10, RULE_whileLoop = 11, RULE_primitive = 12, 
          RULE_booleanOperand = 13, RULE_booleanExpression = 14, RULE_block = 15, 
          RULE_ifStatement = 16, RULE_elseBlock = 17, RULE_ifBlock = 18, 
          RULE_mathOperand = 19, RULE_stringLengthExpression = 20, RULE_readFunctionExpression = 21, 
          RULE_mathFunctionExpression = 22, RULE_program = 23, RULE_declAssignStatement = 24, 
          RULE_assignStatement = 25, RULE_writeStatement = 26, RULE_mathExpression = 27;
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
    'arrayLiteralElement', 'assignment', 'arrayAccessExpression', 'variableAccessor', 
    'typedAssignment', 'whileLoop', 'primitive', 'booleanOperand', 'booleanExpression', 
    'block', 'ifStatement', 'elseBlock', 'ifBlock', 'mathOperand', 'stringLengthExpression', 
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
      state = 62;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__30:
        enterOuterAlt(_localctx, 1);
        state = 56;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 57;
        assignStatement();
        break;
      case TOKEN_T__4:
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
        enterOuterAlt(_localctx, 3);
        state = 58;
        declAssignStatement();
        break;
      case TOKEN_T__17:
        enterOuterAlt(_localctx, 4);
        state = 59;
        ifBlock();
        break;
      case TOKEN_T__12:
        enterOuterAlt(_localctx, 5);
        state = 60;
        whileLoop();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 6);
        state = 61;
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
      state = 64;
      match(TOKEN_T__0);
      state = 65;
      match(TOKEN_T__1);
      state = 66;
      typedAssignment();
      state = 67;
      match(TOKEN_T__2);
      state = 68;
      booleanExpression();
      state = 69;
      match(TOKEN_T__2);
      state = 70;
      assignment();
      state = 71;
      match(TOKEN_T__3);
      state = 72;
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
      state = 79;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__13:
      case TOKEN_T__14:
      case TOKEN_T__15:
      case TOKEN_T__16:
        enterOuterAlt(_localctx, 1);
        state = 74;
        primitive();
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 2);
        state = 75;
        match(TOKEN_T__4);
        state = 76;
        primitive();
        state = 77;
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
      state = 87;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 81;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 82;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 83;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 84;
        booleanExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 85;
        arrayInitializer();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 86;
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
      state = 89;
      match(TOKEN_T__4);
      state = 90;
      primitive();
      state = 91;
      match(TOKEN_T__5);
      state = 92;
      match(TOKEN_T__6);
      state = 93;
      match(TOKEN_Number);
      state = 94;
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
      state = 109;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 96;
        match(TOKEN_T__8);
        state = 97;
        match(TOKEN_T__9);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 98;
        match(TOKEN_T__8);
        state = 99;
        arrayLiteralElement();
        state = 104;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__10) {
          state = 100;
          match(TOKEN_T__10);
          state = 101;
          arrayLiteralElement();
          state = 106;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 107;
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
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 111;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 360777252864) != 0))) {
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 14, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 113;
      variableAccessor();
      state = 114;
      match(TOKEN_T__11);
      state = 115;
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

  ArrayAccessExpressionContext arrayAccessExpression() {
    dynamic _localctx = ArrayAccessExpressionContext(context, state);
    enterRule(_localctx, 16, RULE_arrayAccessExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 117;
      match(TOKEN_T__6);
      state = 118;
      mathExpression();
      state = 119;
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 18, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 121;
      match(TOKEN_Identifier);
      state = 123;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__6) {
        state = 122;
        arrayAccessExpression();
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
    enterRule(_localctx, 20, RULE_typedAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 125;
      type();
      state = 126;
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
    enterRule(_localctx, 22, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 128;
      match(TOKEN_T__12);
      state = 129;
      match(TOKEN_T__1);
      state = 130;
      booleanExpression();
      state = 131;
      match(TOKEN_T__3);
      state = 132;
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
    enterRule(_localctx, 24, RULE_primitive);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 134;
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
    enterRule(_localctx, 26, RULE_booleanOperand);
    try {
      state = 142;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 136;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 137;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 138;
        match(TOKEN_T__1);
        state = 139;
        booleanExpression();
        state = 140;
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
    enterRule(_localctx, 28, RULE_booleanExpression);
    int _la;
    try {
      state = 155;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 8, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 144;
        match(TOKEN_UnaryBooleanOperator);
        state = 145;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 146;
        mathOperand();
        state = 147;
        match(TOKEN_Comparator);
        state = 148;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 150;
        booleanOperand();
        state = 153;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 151;
          match(TOKEN_BinaryBooleanOperator);
          state = 152;
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
    enterRule(_localctx, 30, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 157;
      match(TOKEN_T__8);
      state = 159; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 158;
        statement();
        state = 161; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1101659627554) != 0));
      state = 163;
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
    enterRule(_localctx, 32, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 165;
      match(TOKEN_T__17);
      state = 166;
      match(TOKEN_T__1);
      state = 167;
      booleanExpression();
      state = 168;
      match(TOKEN_T__3);
      state = 169;
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
    enterRule(_localctx, 34, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 171;
      match(TOKEN_T__18);
      state = 172;
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
    enterRule(_localctx, 36, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 174;
      ifStatement();
      state = 179;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 175;
          match(TOKEN_T__18);
          state = 176;
          ifStatement(); 
        }
        state = 181;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
      }
      state = 183;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__18) {
        state = 182;
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
    enterRule(_localctx, 38, RULE_mathOperand);
    try {
      state = 193;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 185;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 186;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 187;
        match(TOKEN_T__1);
        state = 188;
        mathExpression();
        state = 189;
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
        state = 191;
        mathFunctionExpression();
        break;
      case TOKEN_T__19:
        enterOuterAlt(_localctx, 5);
        state = 192;
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
    enterRule(_localctx, 40, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 195;
      match(TOKEN_T__19);
      state = 196;
      variableAccessor();
      state = 197;
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
    enterRule(_localctx, 42, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 199;
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
    enterRule(_localctx, 44, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 201;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2130706432) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 202;
      match(TOKEN_T__1);
      state = 203;
      mathExpression();
      state = 204;
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
    enterRule(_localctx, 46, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 207; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 206;
        statement();
        state = 209; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1101659627554) != 0));
      state = 211;
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
    enterRule(_localctx, 48, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 213;
      type();
      state = 214;
      assignment();
      state = 215;
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
    enterRule(_localctx, 50, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 217;
      assignment();
      state = 218;
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
    enterRule(_localctx, 52, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 220;
      match(TOKEN_T__30);
      state = 221;
      match(TOKEN_T__1);
      state = 225;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 222;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 223;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 224;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 227;
      match(TOKEN_T__3);
      state = 228;
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
    enterRule(_localctx, 54, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 230;
      mathOperand();
      state = 233;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 231;
        match(TOKEN_MathOperator);
        state = 232;
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
      4,1,40,236,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,1,0,1,0,1,0,1,0,1,0,1,0,3,0,63,8,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,1,1,1,1,1,2,1,2,1,2,1,2,1,2,3,2,80,8,2,1,3,1,3,1,3,1,3,1,3,1,3,
      3,3,88,8,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,5,5,
      103,8,5,10,5,12,5,106,9,5,1,5,1,5,3,5,110,8,5,1,6,1,6,1,7,1,7,1,7,
      1,7,1,8,1,8,1,8,1,8,1,9,1,9,3,9,124,8,9,1,10,1,10,1,10,1,11,1,11,1,
      11,1,11,1,11,1,11,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,13,3,13,143,
      8,13,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,154,8,14,3,
      14,156,8,14,1,15,1,15,4,15,160,8,15,11,15,12,15,161,1,15,1,15,1,16,
      1,16,1,16,1,16,1,16,1,16,1,17,1,17,1,17,1,18,1,18,1,18,5,18,178,8,
      18,10,18,12,18,181,9,18,1,18,3,18,184,8,18,1,19,1,19,1,19,1,19,1,19,
      1,19,1,19,1,19,3,19,194,8,19,1,20,1,20,1,20,1,20,1,21,1,21,1,22,1,
      22,1,22,1,22,1,22,1,23,4,23,208,8,23,11,23,12,23,209,1,23,1,23,1,24,
      1,24,1,24,1,24,1,25,1,25,1,25,1,26,1,26,1,26,1,26,1,26,3,26,226,8,
      26,1,26,1,26,1,26,1,27,1,27,1,27,3,27,234,8,27,1,27,0,0,28,0,2,4,6,
      8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,
      54,0,4,3,0,34,34,36,36,38,38,1,0,14,17,1,0,21,23,1,0,24,30,237,0,62,
      1,0,0,0,2,64,1,0,0,0,4,79,1,0,0,0,6,87,1,0,0,0,8,89,1,0,0,0,10,109,
      1,0,0,0,12,111,1,0,0,0,14,113,1,0,0,0,16,117,1,0,0,0,18,121,1,0,0,
      0,20,125,1,0,0,0,22,128,1,0,0,0,24,134,1,0,0,0,26,142,1,0,0,0,28,155,
      1,0,0,0,30,157,1,0,0,0,32,165,1,0,0,0,34,171,1,0,0,0,36,174,1,0,0,
      0,38,193,1,0,0,0,40,195,1,0,0,0,42,199,1,0,0,0,44,201,1,0,0,0,46,207,
      1,0,0,0,48,213,1,0,0,0,50,217,1,0,0,0,52,220,1,0,0,0,54,230,1,0,0,
      0,56,63,3,52,26,0,57,63,3,50,25,0,58,63,3,48,24,0,59,63,3,36,18,0,
      60,63,3,22,11,0,61,63,3,2,1,0,62,56,1,0,0,0,62,57,1,0,0,0,62,58,1,
      0,0,0,62,59,1,0,0,0,62,60,1,0,0,0,62,61,1,0,0,0,63,1,1,0,0,0,64,65,
      5,1,0,0,65,66,5,2,0,0,66,67,3,20,10,0,67,68,5,3,0,0,68,69,3,28,14,
      0,69,70,5,3,0,0,70,71,3,14,7,0,71,72,5,4,0,0,72,73,3,30,15,0,73,3,
      1,0,0,0,74,80,3,24,12,0,75,76,5,5,0,0,76,77,3,24,12,0,77,78,5,6,0,
      0,78,80,1,0,0,0,79,74,1,0,0,0,79,75,1,0,0,0,80,5,1,0,0,0,81,88,3,54,
      27,0,82,88,3,42,21,0,83,88,5,38,0,0,84,88,3,28,14,0,85,88,3,8,4,0,
      86,88,3,10,5,0,87,81,1,0,0,0,87,82,1,0,0,0,87,83,1,0,0,0,87,84,1,0,
      0,0,87,85,1,0,0,0,87,86,1,0,0,0,88,7,1,0,0,0,89,90,5,5,0,0,90,91,3,
      24,12,0,91,92,5,6,0,0,92,93,5,7,0,0,93,94,5,36,0,0,94,95,5,8,0,0,95,
      9,1,0,0,0,96,97,5,9,0,0,97,110,5,10,0,0,98,99,5,9,0,0,99,104,3,12,
      6,0,100,101,5,11,0,0,101,103,3,12,6,0,102,100,1,0,0,0,103,106,1,0,
      0,0,104,102,1,0,0,0,104,105,1,0,0,0,105,107,1,0,0,0,106,104,1,0,0,
      0,107,108,5,10,0,0,108,110,1,0,0,0,109,96,1,0,0,0,109,98,1,0,0,0,110,
      11,1,0,0,0,111,112,7,0,0,0,112,13,1,0,0,0,113,114,3,18,9,0,114,115,
      5,12,0,0,115,116,3,6,3,0,116,15,1,0,0,0,117,118,5,7,0,0,118,119,3,
      54,27,0,119,120,5,8,0,0,120,17,1,0,0,0,121,123,5,40,0,0,122,124,3,
      16,8,0,123,122,1,0,0,0,123,124,1,0,0,0,124,19,1,0,0,0,125,126,3,4,
      2,0,126,127,3,14,7,0,127,21,1,0,0,0,128,129,5,13,0,0,129,130,5,2,0,
      0,130,131,3,28,14,0,131,132,5,4,0,0,132,133,3,30,15,0,133,23,1,0,0,
      0,134,135,7,1,0,0,135,25,1,0,0,0,136,143,5,34,0,0,137,143,3,18,9,0,
      138,139,5,2,0,0,139,140,3,28,14,0,140,141,5,4,0,0,141,143,1,0,0,0,
      142,136,1,0,0,0,142,137,1,0,0,0,142,138,1,0,0,0,143,27,1,0,0,0,144,
      145,5,33,0,0,145,156,3,26,13,0,146,147,3,38,19,0,147,148,5,35,0,0,
      148,149,3,38,19,0,149,156,1,0,0,0,150,153,3,26,13,0,151,152,5,32,0,
      0,152,154,3,26,13,0,153,151,1,0,0,0,153,154,1,0,0,0,154,156,1,0,0,
      0,155,144,1,0,0,0,155,146,1,0,0,0,155,150,1,0,0,0,156,29,1,0,0,0,157,
      159,5,9,0,0,158,160,3,0,0,0,159,158,1,0,0,0,160,161,1,0,0,0,161,159,
      1,0,0,0,161,162,1,0,0,0,162,163,1,0,0,0,163,164,5,10,0,0,164,31,1,
      0,0,0,165,166,5,18,0,0,166,167,5,2,0,0,167,168,3,28,14,0,168,169,5,
      4,0,0,169,170,3,30,15,0,170,33,1,0,0,0,171,172,5,19,0,0,172,173,3,
      30,15,0,173,35,1,0,0,0,174,179,3,32,16,0,175,176,5,19,0,0,176,178,
      3,32,16,0,177,175,1,0,0,0,178,181,1,0,0,0,179,177,1,0,0,0,179,180,
      1,0,0,0,180,183,1,0,0,0,181,179,1,0,0,0,182,184,3,34,17,0,183,182,
      1,0,0,0,183,184,1,0,0,0,184,37,1,0,0,0,185,194,5,36,0,0,186,194,3,
      18,9,0,187,188,5,2,0,0,188,189,3,54,27,0,189,190,5,4,0,0,190,194,1,
      0,0,0,191,194,3,44,22,0,192,194,3,40,20,0,193,185,1,0,0,0,193,186,
      1,0,0,0,193,187,1,0,0,0,193,191,1,0,0,0,193,192,1,0,0,0,194,39,1,0,
      0,0,195,196,5,20,0,0,196,197,3,18,9,0,197,198,5,4,0,0,198,41,1,0,0,
      0,199,200,7,2,0,0,200,43,1,0,0,0,201,202,7,3,0,0,202,203,5,2,0,0,203,
      204,3,54,27,0,204,205,5,4,0,0,205,45,1,0,0,0,206,208,3,0,0,0,207,206,
      1,0,0,0,208,209,1,0,0,0,209,207,1,0,0,0,209,210,1,0,0,0,210,211,1,
      0,0,0,211,212,5,0,0,1,212,47,1,0,0,0,213,214,3,4,2,0,214,215,3,14,
      7,0,215,216,5,3,0,0,216,49,1,0,0,0,217,218,3,14,7,0,218,219,5,3,0,
      0,219,51,1,0,0,0,220,221,5,31,0,0,221,225,5,2,0,0,222,226,3,18,9,0,
      223,226,5,36,0,0,224,226,5,38,0,0,225,222,1,0,0,0,225,223,1,0,0,0,
      225,224,1,0,0,0,226,227,1,0,0,0,227,228,5,4,0,0,228,229,5,3,0,0,229,
      53,1,0,0,0,230,233,3,38,19,0,231,232,5,37,0,0,232,234,3,38,19,0,233,
      231,1,0,0,0,233,234,1,0,0,0,234,55,1,0,0,0,16,62,79,87,104,109,123,
      142,153,155,161,179,183,193,209,225,233
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

class ArrayAccessExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ArrayAccessExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayAccessExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterArrayAccessExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitArrayAccessExpression(this);
  }
}

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor6Parser.TOKEN_Identifier, 0);
  ArrayAccessExpressionContext? arrayAccessExpression() => getRuleContext<ArrayAccessExpressionContext>(0);
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

