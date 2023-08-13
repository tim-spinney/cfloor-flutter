// Generated from grammars/CFloor6.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor6Listener.dart';
import 'CFloor6BaseListener.dart';
const int RULE_type = 0, RULE_arrayLiteralElement = 1, RULE_arrayLiteral = 2, 
          RULE_arrayInitializer = 3, RULE_assignment = 4, RULE_arrayIndexer = 5, 
          RULE_variableAccessor = 6, RULE_typedAssignment = 7, RULE_forLoop = 8, 
          RULE_statement = 9, RULE_program = 10, RULE_whileLoop = 11, RULE_booleanOperand = 12, 
          RULE_booleanExpression = 13, RULE_block = 14, RULE_ifStatement = 15, 
          RULE_elseBlock = 16, RULE_ifBlock = 17, RULE_stringLengthExpression = 18, 
          RULE_mathOperand = 19, RULE_readFunctionExpression = 20, RULE_mathFunctionExpression = 21, 
          RULE_declAssignStatement = 22, RULE_assignStatement = 23, RULE_writeStatement = 24, 
          RULE_mathExpression = 25;
class CFloor6Parser extends Parser {
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
                   TOKEN_T__21 = 22, TOKEN_T__22 = 23, TOKEN_T__23 = 24, 
                   TOKEN_T__24 = 25, TOKEN_T__25 = 26, TOKEN_T__26 = 27, 
                   TOKEN_T__27 = 28, TOKEN_Primitive = 29, TOKEN_BinaryBooleanOperator = 30, 
                   TOKEN_UnaryBooleanOperator = 31, TOKEN_BooleanLiteral = 32, 
                   TOKEN_Comparator = 33, TOKEN_Number = 34, TOKEN_MathOperator = 35, 
                   TOKEN_StringLiteral = 36, TOKEN_WS = 37, TOKEN_Identifier = 38;

  @override
  final List<String> ruleNames = [
    'type', 'arrayLiteralElement', 'arrayLiteral', 'arrayInitializer', 'assignment', 
    'arrayIndexer', 'variableAccessor', 'typedAssignment', 'forLoop', 'statement', 
    'program', 'whileLoop', 'booleanOperand', 'booleanExpression', 'block', 
    'ifStatement', 'elseBlock', 'ifBlock', 'stringLengthExpression', 'mathOperand', 
    'readFunctionExpression', 'mathFunctionExpression', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'array'", "'<'", "'>'", "'{'", "'}'", "','", "'['", "']'", 
      "'='", "'for'", "'('", "';'", "')'", "'while'", "'if'", "'else'", 
      "'length('", "'readInt()'", "'readFloat()'", "'readString()'", "'floor'", 
      "'ceil'", "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", "'write'", 
      null, null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, "Primitive", "BinaryBooleanOperator", 
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 0, RULE_type);
    try {
      state = 57;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 52;
        match(TOKEN_Primitive);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 2);
        state = 53;
        match(TOKEN_T__0);
        state = 54;
        match(TOKEN_T__1);
        state = 55;
        match(TOKEN_Primitive);
        state = 56;
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

  ArrayLiteralElementContext arrayLiteralElement() {
    dynamic _localctx = ArrayLiteralElementContext(context, state);
    enterRule(_localctx, 2, RULE_arrayLiteralElement);
    try {
      state = 64;
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
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 3);
        state = 61;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 4);
        state = 62;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 5);
        state = 63;
        arrayLiteral();
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

  ArrayLiteralContext arrayLiteral() {
    dynamic _localctx = ArrayLiteralContext(context, state);
    enterRule(_localctx, 4, RULE_arrayLiteral);
    int _la;
    try {
      state = 79;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 66;
        match(TOKEN_T__3);
        state = 67;
        match(TOKEN_T__4);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 68;
        match(TOKEN_T__3);
        state = 69;
        arrayLiteralElement();
        state = 74;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__5) {
          state = 70;
          match(TOKEN_T__5);
          state = 71;
          arrayLiteralElement();
          state = 76;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 77;
        match(TOKEN_T__4);
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
    enterRule(_localctx, 6, RULE_arrayInitializer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 81;
      match(TOKEN_T__0);
      state = 82;
      match(TOKEN_T__1);
      state = 83;
      match(TOKEN_Primitive);
      state = 84;
      match(TOKEN_T__2);
      state = 85;
      match(TOKEN_T__6);
      state = 86;
      match(TOKEN_Number);
      state = 87;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 8, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 89;
      variableAccessor();
      state = 90;
      match(TOKEN_T__8);
      state = 97;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        state = 91;
        mathExpression();
        break;
      case 2:
        state = 92;
        readFunctionExpression();
        break;
      case 3:
        state = 93;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        state = 94;
        booleanExpression();
        break;
      case 5:
        state = 95;
        arrayInitializer();
        break;
      case 6:
        state = 96;
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

  ArrayIndexerContext arrayIndexer() {
    dynamic _localctx = ArrayIndexerContext(context, state);
    enterRule(_localctx, 10, RULE_arrayIndexer);
    try {
      state = 101;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 5, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 99;
        match(TOKEN_Number);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 100;
        mathExpression();
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 12, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 103;
      match(TOKEN_Identifier);
      state = 108;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__6) {
        state = 104;
        match(TOKEN_T__6);
        state = 105;
        arrayIndexer();
        state = 106;
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
    enterRule(_localctx, 14, RULE_typedAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 110;
      type();
      state = 111;
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

  ForLoopContext forLoop() {
    dynamic _localctx = ForLoopContext(context, state);
    enterRule(_localctx, 16, RULE_forLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 113;
      match(TOKEN_T__9);
      state = 114;
      match(TOKEN_T__10);
      state = 115;
      typedAssignment();
      state = 116;
      match(TOKEN_T__11);
      state = 117;
      booleanExpression();
      state = 118;
      match(TOKEN_T__11);
      state = 119;
      assignment();
      state = 120;
      match(TOKEN_T__12);
      state = 121;
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
    enterRule(_localctx, 18, RULE_statement);
    try {
      state = 129;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__27:
        enterOuterAlt(_localctx, 1);
        state = 123;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 124;
        assignStatement();
        break;
      case TOKEN_T__0:
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 3);
        state = 125;
        declAssignStatement();
        break;
      case TOKEN_T__14:
        enterOuterAlt(_localctx, 4);
        state = 126;
        ifBlock();
        break;
      case TOKEN_T__13:
        enterOuterAlt(_localctx, 5);
        state = 127;
        whileLoop();
        break;
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 6);
        state = 128;
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 20, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 134;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 275683263490) != 0)) {
        state = 131;
        statement();
        state = 136;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
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

  WhileLoopContext whileLoop() {
    dynamic _localctx = WhileLoopContext(context, state);
    enterRule(_localctx, 22, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 137;
      match(TOKEN_T__13);
      state = 138;
      match(TOKEN_T__10);
      state = 139;
      booleanExpression();
      state = 140;
      match(TOKEN_T__12);
      state = 141;
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
    enterRule(_localctx, 24, RULE_booleanOperand);
    try {
      state = 149;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 143;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 144;
        variableAccessor();
        break;
      case TOKEN_T__10:
        enterOuterAlt(_localctx, 3);
        state = 145;
        match(TOKEN_T__10);
        state = 146;
        booleanExpression();
        state = 147;
        match(TOKEN_T__12);
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
      state = 162;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 151;
        match(TOKEN_UnaryBooleanOperator);
        state = 152;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 153;
        mathOperand();
        state = 154;
        match(TOKEN_Comparator);
        state = 155;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 157;
        booleanOperand();
        state = 160;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 158;
          match(TOKEN_BinaryBooleanOperator);
          state = 159;
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
      state = 164;
      match(TOKEN_T__3);
      state = 166; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 165;
        statement();
        state = 168; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 275683263490) != 0));
      state = 170;
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
    enterRule(_localctx, 30, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 172;
      match(TOKEN_T__14);
      state = 173;
      match(TOKEN_T__10);
      state = 174;
      booleanExpression();
      state = 175;
      match(TOKEN_T__12);
      state = 176;
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
      state = 178;
      match(TOKEN_T__15);
      state = 179;
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
      state = 181;
      ifStatement();
      state = 186;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 182;
          match(TOKEN_T__15);
          state = 183;
          ifStatement(); 
        }
        state = 188;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      }
      state = 190;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__15) {
        state = 189;
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

  StringLengthExpressionContext stringLengthExpression() {
    dynamic _localctx = StringLengthExpressionContext(context, state);
    enterRule(_localctx, 36, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 192;
      match(TOKEN_T__16);
      state = 193;
      variableAccessor();
      state = 194;
      match(TOKEN_T__12);
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
      state = 204;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 196;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 197;
        variableAccessor();
        break;
      case TOKEN_T__10:
        enterOuterAlt(_localctx, 3);
        state = 198;
        match(TOKEN_T__10);
        state = 199;
        mathExpression();
        state = 200;
        match(TOKEN_T__12);
        break;
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
      case TOKEN_T__26:
        enterOuterAlt(_localctx, 4);
        state = 202;
        mathFunctionExpression();
        break;
      case TOKEN_T__16:
        enterOuterAlt(_localctx, 5);
        state = 203;
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
    enterRule(_localctx, 40, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 206;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1835008) != 0))) {
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
      state = 208;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 266338304) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 209;
      match(TOKEN_T__10);
      state = 210;
      mathExpression();
      state = 211;
      match(TOKEN_T__12);
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
      state = 213;
      type();
      state = 214;
      assignment();
      state = 215;
      match(TOKEN_T__11);
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
      state = 217;
      assignment();
      state = 218;
      match(TOKEN_T__11);
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
      state = 220;
      match(TOKEN_T__27);
      state = 221;
      match(TOKEN_T__10);
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
      match(TOKEN_T__12);
      state = 228;
      match(TOKEN_T__11);
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
      4,1,38,236,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,1,0,1,0,1,0,1,0,
      1,0,3,0,58,8,0,1,1,1,1,1,1,1,1,1,1,3,1,65,8,1,1,2,1,2,1,2,1,2,1,2,
      1,2,5,2,73,8,2,10,2,12,2,76,9,2,1,2,1,2,3,2,80,8,2,1,3,1,3,1,3,1,3,
      1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,98,8,4,1,5,1,5,
      3,5,102,8,5,1,6,1,6,1,6,1,6,1,6,3,6,109,8,6,1,7,1,7,1,7,1,8,1,8,1,
      8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,1,9,1,9,3,9,130,8,9,
      1,10,5,10,133,8,10,10,10,12,10,136,9,10,1,11,1,11,1,11,1,11,1,11,1,
      11,1,12,1,12,1,12,1,12,1,12,1,12,3,12,150,8,12,1,13,1,13,1,13,1,13,
      1,13,1,13,1,13,1,13,1,13,3,13,161,8,13,3,13,163,8,13,1,14,1,14,4,14,
      167,8,14,11,14,12,14,168,1,14,1,14,1,15,1,15,1,15,1,15,1,15,1,15,1,
      16,1,16,1,16,1,17,1,17,1,17,5,17,185,8,17,10,17,12,17,188,9,17,1,17,
      3,17,191,8,17,1,18,1,18,1,18,1,18,1,19,1,19,1,19,1,19,1,19,1,19,1,
      19,1,19,3,19,205,8,19,1,20,1,20,1,21,1,21,1,21,1,21,1,21,1,22,1,22,
      1,22,1,22,1,23,1,23,1,23,1,24,1,24,1,24,1,24,1,24,3,24,226,8,24,1,
      24,1,24,1,24,1,25,1,25,1,25,3,25,234,8,25,1,25,0,0,26,0,2,4,6,8,10,
      12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,0,2,1,
      0,18,20,1,0,21,27,244,0,57,1,0,0,0,2,64,1,0,0,0,4,79,1,0,0,0,6,81,
      1,0,0,0,8,89,1,0,0,0,10,101,1,0,0,0,12,103,1,0,0,0,14,110,1,0,0,0,
      16,113,1,0,0,0,18,129,1,0,0,0,20,134,1,0,0,0,22,137,1,0,0,0,24,149,
      1,0,0,0,26,162,1,0,0,0,28,164,1,0,0,0,30,172,1,0,0,0,32,178,1,0,0,
      0,34,181,1,0,0,0,36,192,1,0,0,0,38,204,1,0,0,0,40,206,1,0,0,0,42,208,
      1,0,0,0,44,213,1,0,0,0,46,217,1,0,0,0,48,220,1,0,0,0,50,230,1,0,0,
      0,52,58,5,29,0,0,53,54,5,1,0,0,54,55,5,2,0,0,55,56,5,29,0,0,56,58,
      5,3,0,0,57,52,1,0,0,0,57,53,1,0,0,0,58,1,1,0,0,0,59,65,5,34,0,0,60,
      65,5,38,0,0,61,65,5,36,0,0,62,65,5,32,0,0,63,65,3,4,2,0,64,59,1,0,
      0,0,64,60,1,0,0,0,64,61,1,0,0,0,64,62,1,0,0,0,64,63,1,0,0,0,65,3,1,
      0,0,0,66,67,5,4,0,0,67,80,5,5,0,0,68,69,5,4,0,0,69,74,3,2,1,0,70,71,
      5,6,0,0,71,73,3,2,1,0,72,70,1,0,0,0,73,76,1,0,0,0,74,72,1,0,0,0,74,
      75,1,0,0,0,75,77,1,0,0,0,76,74,1,0,0,0,77,78,5,5,0,0,78,80,1,0,0,0,
      79,66,1,0,0,0,79,68,1,0,0,0,80,5,1,0,0,0,81,82,5,1,0,0,82,83,5,2,0,
      0,83,84,5,29,0,0,84,85,5,3,0,0,85,86,5,7,0,0,86,87,5,34,0,0,87,88,
      5,8,0,0,88,7,1,0,0,0,89,90,3,12,6,0,90,97,5,9,0,0,91,98,3,50,25,0,
      92,98,3,40,20,0,93,98,5,36,0,0,94,98,3,26,13,0,95,98,3,6,3,0,96,98,
      3,4,2,0,97,91,1,0,0,0,97,92,1,0,0,0,97,93,1,0,0,0,97,94,1,0,0,0,97,
      95,1,0,0,0,97,96,1,0,0,0,98,9,1,0,0,0,99,102,5,34,0,0,100,102,3,50,
      25,0,101,99,1,0,0,0,101,100,1,0,0,0,102,11,1,0,0,0,103,108,5,38,0,
      0,104,105,5,7,0,0,105,106,3,10,5,0,106,107,5,8,0,0,107,109,1,0,0,0,
      108,104,1,0,0,0,108,109,1,0,0,0,109,13,1,0,0,0,110,111,3,0,0,0,111,
      112,3,8,4,0,112,15,1,0,0,0,113,114,5,10,0,0,114,115,5,11,0,0,115,116,
      3,14,7,0,116,117,5,12,0,0,117,118,3,26,13,0,118,119,5,12,0,0,119,120,
      3,8,4,0,120,121,5,13,0,0,121,122,3,28,14,0,122,17,1,0,0,0,123,130,
      3,48,24,0,124,130,3,46,23,0,125,130,3,44,22,0,126,130,3,34,17,0,127,
      130,3,22,11,0,128,130,3,16,8,0,129,123,1,0,0,0,129,124,1,0,0,0,129,
      125,1,0,0,0,129,126,1,0,0,0,129,127,1,0,0,0,129,128,1,0,0,0,130,19,
      1,0,0,0,131,133,3,18,9,0,132,131,1,0,0,0,133,136,1,0,0,0,134,132,1,
      0,0,0,134,135,1,0,0,0,135,21,1,0,0,0,136,134,1,0,0,0,137,138,5,14,
      0,0,138,139,5,11,0,0,139,140,3,26,13,0,140,141,5,13,0,0,141,142,3,
      28,14,0,142,23,1,0,0,0,143,150,5,32,0,0,144,150,3,12,6,0,145,146,5,
      11,0,0,146,147,3,26,13,0,147,148,5,13,0,0,148,150,1,0,0,0,149,143,
      1,0,0,0,149,144,1,0,0,0,149,145,1,0,0,0,150,25,1,0,0,0,151,152,5,31,
      0,0,152,163,3,24,12,0,153,154,3,38,19,0,154,155,5,33,0,0,155,156,3,
      38,19,0,156,163,1,0,0,0,157,160,3,24,12,0,158,159,5,30,0,0,159,161,
      3,24,12,0,160,158,1,0,0,0,160,161,1,0,0,0,161,163,1,0,0,0,162,151,
      1,0,0,0,162,153,1,0,0,0,162,157,1,0,0,0,163,27,1,0,0,0,164,166,5,4,
      0,0,165,167,3,18,9,0,166,165,1,0,0,0,167,168,1,0,0,0,168,166,1,0,0,
      0,168,169,1,0,0,0,169,170,1,0,0,0,170,171,5,5,0,0,171,29,1,0,0,0,172,
      173,5,15,0,0,173,174,5,11,0,0,174,175,3,26,13,0,175,176,5,13,0,0,176,
      177,3,28,14,0,177,31,1,0,0,0,178,179,5,16,0,0,179,180,3,28,14,0,180,
      33,1,0,0,0,181,186,3,30,15,0,182,183,5,16,0,0,183,185,3,30,15,0,184,
      182,1,0,0,0,185,188,1,0,0,0,186,184,1,0,0,0,186,187,1,0,0,0,187,190,
      1,0,0,0,188,186,1,0,0,0,189,191,3,32,16,0,190,189,1,0,0,0,190,191,
      1,0,0,0,191,35,1,0,0,0,192,193,5,17,0,0,193,194,3,12,6,0,194,195,5,
      13,0,0,195,37,1,0,0,0,196,205,5,34,0,0,197,205,3,12,6,0,198,199,5,
      11,0,0,199,200,3,50,25,0,200,201,5,13,0,0,201,205,1,0,0,0,202,205,
      3,42,21,0,203,205,3,36,18,0,204,196,1,0,0,0,204,197,1,0,0,0,204,198,
      1,0,0,0,204,202,1,0,0,0,204,203,1,0,0,0,205,39,1,0,0,0,206,207,7,0,
      0,0,207,41,1,0,0,0,208,209,7,1,0,0,209,210,5,11,0,0,210,211,3,50,25,
      0,211,212,5,13,0,0,212,43,1,0,0,0,213,214,3,0,0,0,214,215,3,8,4,0,
      215,216,5,12,0,0,216,45,1,0,0,0,217,218,3,8,4,0,218,219,5,12,0,0,219,
      47,1,0,0,0,220,221,5,28,0,0,221,225,5,11,0,0,222,226,3,12,6,0,223,
      226,5,34,0,0,224,226,5,36,0,0,225,222,1,0,0,0,225,223,1,0,0,0,225,
      224,1,0,0,0,226,227,1,0,0,0,227,228,5,13,0,0,228,229,5,12,0,0,229,
      49,1,0,0,0,230,233,3,38,19,0,231,232,5,35,0,0,232,234,3,38,19,0,233,
      231,1,0,0,0,233,234,1,0,0,0,234,51,1,0,0,0,18,57,64,74,79,97,101,108,
      129,134,149,160,162,168,186,190,204,225,233
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
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

class ArrayLiteralElementContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor6Parser.TOKEN_Number, 0);
  TerminalNode? Identifier() => getToken(CFloor6Parser.TOKEN_Identifier, 0);
  TerminalNode? StringLiteral() => getToken(CFloor6Parser.TOKEN_StringLiteral, 0);
  TerminalNode? BooleanLiteral() => getToken(CFloor6Parser.TOKEN_BooleanLiteral, 0);
  ArrayLiteralContext? arrayLiteral() => getRuleContext<ArrayLiteralContext>(0);
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

class AssignmentContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor6Parser.TOKEN_StringLiteral, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  ArrayInitializerContext? arrayInitializer() => getRuleContext<ArrayInitializerContext>(0);
  ArrayLiteralContext? arrayLiteral() => getRuleContext<ArrayLiteralContext>(0);
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

class ArrayIndexerContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor6Parser.TOKEN_Number, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ArrayIndexerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayIndexer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.enterArrayIndexer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor6Listener) listener.exitArrayIndexer(this);
  }
}

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor6Parser.TOKEN_Identifier, 0);
  ArrayIndexerContext? arrayIndexer() => getRuleContext<ArrayIndexerContext>(0);
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

class ProgramContext extends ParserRuleContext {
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

