// Generated from grammars/CFloor6.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor6Listener.dart';
import 'CFloor6BaseListener.dart';
const int RULE_statement = 0, RULE_forLoop = 1, RULE_type = 2, RULE_expression = 3, 
          RULE_arrayInitializer = 4, RULE_arrayLiteral = 5, RULE_arrayLiteralElement = 6, 
          RULE_assignment = 7, RULE_variableAccessor = 8, RULE_typedAssignment = 9, 
          RULE_whileLoop = 10, RULE_booleanOperand = 11, RULE_booleanExpression = 12, 
          RULE_block = 13, RULE_ifStatement = 14, RULE_elseBlock = 15, RULE_ifBlock = 16, 
          RULE_mathOperand = 17, RULE_stringLengthExpression = 18, RULE_readFunctionExpression = 19, 
          RULE_mathFunctionExpression = 20, RULE_program = 21, RULE_declAssignStatement = 22, 
          RULE_assignStatement = 23, RULE_writeStatement = 24, RULE_mathExpression = 25;
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
                   TOKEN_BinaryBooleanOperator = 28, TOKEN_UnaryBooleanOperator = 29, 
                   TOKEN_BooleanLiteral = 30, TOKEN_Comparator = 31, TOKEN_Primitive = 32, 
                   TOKEN_Number = 33, TOKEN_MathOperator = 34, TOKEN_StringLiteral = 35, 
                   TOKEN_WS = 36, TOKEN_Identifier = 37;

  @override
  final List<String> ruleNames = [
    'statement', 'forLoop', 'type', 'expression', 'arrayInitializer', 'arrayLiteral', 
    'arrayLiteralElement', 'assignment', 'variableAccessor', 'typedAssignment', 
    'whileLoop', 'booleanOperand', 'booleanExpression', 'block', 'ifStatement', 
    'elseBlock', 'ifBlock', 'mathOperand', 'stringLengthExpression', 'readFunctionExpression', 
    'mathFunctionExpression', 'program', 'declAssignStatement', 'assignStatement', 
    'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'for'", "'('", "';'", "')'", "'array<'", "'>'", "'['", "']'", 
      "'{'", "'}'", "','", "'='", "'while'", "'if'", "'else'", "'length('", 
      "'read_int()'", "'read_float()'", "'read_string()'", "'floor'", "'ceil'", 
      "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", "'write'", null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, "BinaryBooleanOperator", "UnaryBooleanOperator", 
      "BooleanLiteral", "Comparator", "Primitive", "Number", "MathOperator", 
      "StringLiteral", "WS", "Identifier"
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
      state = 58;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__26:
        enterOuterAlt(_localctx, 1);
        state = 52;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 53;
        assignStatement();
        break;
      case TOKEN_T__4:
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 3);
        state = 54;
        declAssignStatement();
        break;
      case TOKEN_T__13:
        enterOuterAlt(_localctx, 4);
        state = 55;
        ifBlock();
        break;
      case TOKEN_T__12:
        enterOuterAlt(_localctx, 5);
        state = 56;
        whileLoop();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 6);
        state = 57;
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
      state = 60;
      match(TOKEN_T__0);
      state = 61;
      match(TOKEN_T__1);
      state = 62;
      typedAssignment();
      state = 63;
      match(TOKEN_T__2);
      state = 64;
      booleanExpression();
      state = 65;
      match(TOKEN_T__2);
      state = 66;
      assignment();
      state = 67;
      match(TOKEN_T__3);
      state = 68;
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
      state = 74;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 70;
        match(TOKEN_Primitive);
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 2);
        state = 71;
        match(TOKEN_T__4);
        state = 72;
        match(TOKEN_Primitive);
        state = 73;
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
      state = 82;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 76;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 77;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 78;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 79;
        booleanExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 80;
        arrayInitializer();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 81;
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
      state = 84;
      match(TOKEN_T__4);
      state = 85;
      match(TOKEN_Primitive);
      state = 86;
      match(TOKEN_T__5);
      state = 87;
      match(TOKEN_T__6);
      state = 88;
      match(TOKEN_Number);
      state = 89;
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
      state = 104;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 91;
        match(TOKEN_T__8);
        state = 92;
        match(TOKEN_T__9);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 93;
        match(TOKEN_T__8);
        state = 94;
        arrayLiteralElement();
        state = 99;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__10) {
          state = 95;
          match(TOKEN_T__10);
          state = 96;
          arrayLiteralElement();
          state = 101;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 102;
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
      state = 111;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 106;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 2);
        state = 107;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 3);
        state = 108;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__8:
        enterOuterAlt(_localctx, 4);
        state = 109;
        arrayLiteral();
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 5);
        state = 110;
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 16, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 117;
      match(TOKEN_Identifier);
      state = 122;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__6) {
        state = 118;
        match(TOKEN_T__6);
        state = 119;
        mathExpression();
        state = 120;
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
      state = 124;
      type();
      state = 125;
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
      state = 127;
      match(TOKEN_T__12);
      state = 128;
      match(TOKEN_T__1);
      state = 129;
      booleanExpression();
      state = 130;
      match(TOKEN_T__3);
      state = 131;
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

  BooleanOperandContext booleanOperand() {
    dynamic _localctx = BooleanOperandContext(context, state);
    enterRule(_localctx, 22, RULE_booleanOperand);
    try {
      state = 139;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 133;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 134;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 135;
        match(TOKEN_T__1);
        state = 136;
        booleanExpression();
        state = 137;
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
    enterRule(_localctx, 24, RULE_booleanExpression);
    int _la;
    try {
      state = 152;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 9, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 141;
        match(TOKEN_UnaryBooleanOperator);
        state = 142;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 143;
        mathOperand();
        state = 144;
        match(TOKEN_Comparator);
        state = 145;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 147;
        booleanOperand();
        state = 150;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 148;
          match(TOKEN_BinaryBooleanOperator);
          state = 149;
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
    enterRule(_localctx, 26, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 154;
      match(TOKEN_T__8);
      state = 156; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 155;
        statement();
        state = 158; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 141868163106) != 0));
      state = 160;
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
    enterRule(_localctx, 28, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 162;
      match(TOKEN_T__13);
      state = 163;
      match(TOKEN_T__1);
      state = 164;
      booleanExpression();
      state = 165;
      match(TOKEN_T__3);
      state = 166;
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
    enterRule(_localctx, 30, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 168;
      match(TOKEN_T__14);
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

  IfBlockContext ifBlock() {
    dynamic _localctx = IfBlockContext(context, state);
    enterRule(_localctx, 32, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 171;
      ifStatement();
      state = 176;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 172;
          match(TOKEN_T__14);
          state = 173;
          ifStatement(); 
        }
        state = 178;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
      }
      state = 180;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__14) {
        state = 179;
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
    enterRule(_localctx, 34, RULE_mathOperand);
    try {
      state = 190;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 182;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 183;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 184;
        match(TOKEN_T__1);
        state = 185;
        mathExpression();
        state = 186;
        match(TOKEN_T__3);
        break;
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
        enterOuterAlt(_localctx, 4);
        state = 188;
        mathFunctionExpression();
        break;
      case TOKEN_T__15:
        enterOuterAlt(_localctx, 5);
        state = 189;
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
    enterRule(_localctx, 36, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 192;
      match(TOKEN_T__15);
      state = 193;
      variableAccessor();
      state = 194;
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
    enterRule(_localctx, 38, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 196;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 917504) != 0))) {
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
    enterRule(_localctx, 40, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 198;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 133169152) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 199;
      match(TOKEN_T__1);
      state = 200;
      mathExpression();
      state = 201;
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
    enterRule(_localctx, 42, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 204; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 203;
        statement();
        state = 206; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 141868163106) != 0));
      state = 208;
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
    enterRule(_localctx, 44, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 210;
      type();
      state = 211;
      assignment();
      state = 212;
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
    enterRule(_localctx, 46, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
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

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 48, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 217;
      match(TOKEN_T__26);
      state = 218;
      match(TOKEN_T__1);
      state = 222;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 219;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 220;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 221;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 224;
      match(TOKEN_T__3);
      state = 225;
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
    enterRule(_localctx, 50, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 227;
      mathOperand();
      state = 230;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 228;
        match(TOKEN_MathOperator);
        state = 229;
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
      4,1,37,233,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,1,0,1,0,1,0,1,0,
      1,0,1,0,3,0,59,8,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,
      1,2,1,2,3,2,75,8,2,1,3,1,3,1,3,1,3,1,3,1,3,3,3,83,8,3,1,4,1,4,1,4,
      1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,5,5,98,8,5,10,5,12,5,101,9,
      5,1,5,1,5,3,5,105,8,5,1,6,1,6,1,6,1,6,1,6,3,6,112,8,6,1,7,1,7,1,7,
      1,7,1,8,1,8,1,8,1,8,1,8,3,8,123,8,8,1,9,1,9,1,9,1,10,1,10,1,10,1,10,
      1,10,1,10,1,11,1,11,1,11,1,11,1,11,1,11,3,11,140,8,11,1,12,1,12,1,
      12,1,12,1,12,1,12,1,12,1,12,1,12,3,12,151,8,12,3,12,153,8,12,1,13,
      1,13,4,13,157,8,13,11,13,12,13,158,1,13,1,13,1,14,1,14,1,14,1,14,1,
      14,1,14,1,15,1,15,1,15,1,16,1,16,1,16,5,16,175,8,16,10,16,12,16,178,
      9,16,1,16,3,16,181,8,16,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,3,
      17,191,8,17,1,18,1,18,1,18,1,18,1,19,1,19,1,20,1,20,1,20,1,20,1,20,
      1,21,4,21,205,8,21,11,21,12,21,206,1,21,1,21,1,22,1,22,1,22,1,22,1,
      23,1,23,1,23,1,24,1,24,1,24,1,24,1,24,3,24,223,8,24,1,24,1,24,1,24,
      1,25,1,25,1,25,3,25,231,8,25,1,25,0,0,26,0,2,4,6,8,10,12,14,16,18,
      20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,0,2,1,0,17,19,1,0,
      20,26,240,0,58,1,0,0,0,2,60,1,0,0,0,4,74,1,0,0,0,6,82,1,0,0,0,8,84,
      1,0,0,0,10,104,1,0,0,0,12,111,1,0,0,0,14,113,1,0,0,0,16,117,1,0,0,
      0,18,124,1,0,0,0,20,127,1,0,0,0,22,139,1,0,0,0,24,152,1,0,0,0,26,154,
      1,0,0,0,28,162,1,0,0,0,30,168,1,0,0,0,32,171,1,0,0,0,34,190,1,0,0,
      0,36,192,1,0,0,0,38,196,1,0,0,0,40,198,1,0,0,0,42,204,1,0,0,0,44,210,
      1,0,0,0,46,214,1,0,0,0,48,217,1,0,0,0,50,227,1,0,0,0,52,59,3,48,24,
      0,53,59,3,46,23,0,54,59,3,44,22,0,55,59,3,32,16,0,56,59,3,20,10,0,
      57,59,3,2,1,0,58,52,1,0,0,0,58,53,1,0,0,0,58,54,1,0,0,0,58,55,1,0,
      0,0,58,56,1,0,0,0,58,57,1,0,0,0,59,1,1,0,0,0,60,61,5,1,0,0,61,62,5,
      2,0,0,62,63,3,18,9,0,63,64,5,3,0,0,64,65,3,24,12,0,65,66,5,3,0,0,66,
      67,3,14,7,0,67,68,5,4,0,0,68,69,3,26,13,0,69,3,1,0,0,0,70,75,5,32,
      0,0,71,72,5,5,0,0,72,73,5,32,0,0,73,75,5,6,0,0,74,70,1,0,0,0,74,71,
      1,0,0,0,75,5,1,0,0,0,76,83,3,50,25,0,77,83,3,38,19,0,78,83,5,35,0,
      0,79,83,3,24,12,0,80,83,3,8,4,0,81,83,3,10,5,0,82,76,1,0,0,0,82,77,
      1,0,0,0,82,78,1,0,0,0,82,79,1,0,0,0,82,80,1,0,0,0,82,81,1,0,0,0,83,
      7,1,0,0,0,84,85,5,5,0,0,85,86,5,32,0,0,86,87,5,6,0,0,87,88,5,7,0,0,
      88,89,5,33,0,0,89,90,5,8,0,0,90,9,1,0,0,0,91,92,5,9,0,0,92,105,5,10,
      0,0,93,94,5,9,0,0,94,99,3,12,6,0,95,96,5,11,0,0,96,98,3,12,6,0,97,
      95,1,0,0,0,98,101,1,0,0,0,99,97,1,0,0,0,99,100,1,0,0,0,100,102,1,0,
      0,0,101,99,1,0,0,0,102,103,5,10,0,0,103,105,1,0,0,0,104,91,1,0,0,0,
      104,93,1,0,0,0,105,11,1,0,0,0,106,112,5,33,0,0,107,112,5,35,0,0,108,
      112,5,30,0,0,109,112,3,10,5,0,110,112,3,8,4,0,111,106,1,0,0,0,111,
      107,1,0,0,0,111,108,1,0,0,0,111,109,1,0,0,0,111,110,1,0,0,0,112,13,
      1,0,0,0,113,114,3,16,8,0,114,115,5,12,0,0,115,116,3,6,3,0,116,15,1,
      0,0,0,117,122,5,37,0,0,118,119,5,7,0,0,119,120,3,50,25,0,120,121,5,
      8,0,0,121,123,1,0,0,0,122,118,1,0,0,0,122,123,1,0,0,0,123,17,1,0,0,
      0,124,125,3,4,2,0,125,126,3,14,7,0,126,19,1,0,0,0,127,128,5,13,0,0,
      128,129,5,2,0,0,129,130,3,24,12,0,130,131,5,4,0,0,131,132,3,26,13,
      0,132,21,1,0,0,0,133,140,5,30,0,0,134,140,3,16,8,0,135,136,5,2,0,0,
      136,137,3,24,12,0,137,138,5,4,0,0,138,140,1,0,0,0,139,133,1,0,0,0,
      139,134,1,0,0,0,139,135,1,0,0,0,140,23,1,0,0,0,141,142,5,29,0,0,142,
      153,3,22,11,0,143,144,3,34,17,0,144,145,5,31,0,0,145,146,3,34,17,0,
      146,153,1,0,0,0,147,150,3,22,11,0,148,149,5,28,0,0,149,151,3,22,11,
      0,150,148,1,0,0,0,150,151,1,0,0,0,151,153,1,0,0,0,152,141,1,0,0,0,
      152,143,1,0,0,0,152,147,1,0,0,0,153,25,1,0,0,0,154,156,5,9,0,0,155,
      157,3,0,0,0,156,155,1,0,0,0,157,158,1,0,0,0,158,156,1,0,0,0,158,159,
      1,0,0,0,159,160,1,0,0,0,160,161,5,10,0,0,161,27,1,0,0,0,162,163,5,
      14,0,0,163,164,5,2,0,0,164,165,3,24,12,0,165,166,5,4,0,0,166,167,3,
      26,13,0,167,29,1,0,0,0,168,169,5,15,0,0,169,170,3,26,13,0,170,31,1,
      0,0,0,171,176,3,28,14,0,172,173,5,15,0,0,173,175,3,28,14,0,174,172,
      1,0,0,0,175,178,1,0,0,0,176,174,1,0,0,0,176,177,1,0,0,0,177,180,1,
      0,0,0,178,176,1,0,0,0,179,181,3,30,15,0,180,179,1,0,0,0,180,181,1,
      0,0,0,181,33,1,0,0,0,182,191,5,33,0,0,183,191,3,16,8,0,184,185,5,2,
      0,0,185,186,3,50,25,0,186,187,5,4,0,0,187,191,1,0,0,0,188,191,3,40,
      20,0,189,191,3,36,18,0,190,182,1,0,0,0,190,183,1,0,0,0,190,184,1,0,
      0,0,190,188,1,0,0,0,190,189,1,0,0,0,191,35,1,0,0,0,192,193,5,16,0,
      0,193,194,3,16,8,0,194,195,5,4,0,0,195,37,1,0,0,0,196,197,7,0,0,0,
      197,39,1,0,0,0,198,199,7,1,0,0,199,200,5,2,0,0,200,201,3,50,25,0,201,
      202,5,4,0,0,202,41,1,0,0,0,203,205,3,0,0,0,204,203,1,0,0,0,205,206,
      1,0,0,0,206,204,1,0,0,0,206,207,1,0,0,0,207,208,1,0,0,0,208,209,5,
      0,0,1,209,43,1,0,0,0,210,211,3,4,2,0,211,212,3,14,7,0,212,213,5,3,
      0,0,213,45,1,0,0,0,214,215,3,14,7,0,215,216,5,3,0,0,216,47,1,0,0,0,
      217,218,5,27,0,0,218,222,5,2,0,0,219,223,3,16,8,0,220,223,5,33,0,0,
      221,223,5,35,0,0,222,219,1,0,0,0,222,220,1,0,0,0,222,221,1,0,0,0,223,
      224,1,0,0,0,224,225,5,4,0,0,225,226,5,3,0,0,226,49,1,0,0,0,227,230,
      3,34,17,0,228,229,5,34,0,0,229,231,3,34,17,0,230,228,1,0,0,0,230,231,
      1,0,0,0,231,51,1,0,0,0,17,58,74,82,99,104,111,122,139,150,152,158,
      176,180,190,206,222,230
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
  TerminalNode? Primitive() => getToken(CFloor6Parser.TOKEN_Primitive, 0);
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
  TerminalNode? Primitive() => getToken(CFloor6Parser.TOKEN_Primitive, 0);
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

