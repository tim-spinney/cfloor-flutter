// Generated from grammars/CFloor6.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor6Listener.dart';
import 'CFloor6BaseListener.dart';
const int RULE_type = 0, RULE_arrayLiteralElement = 1, RULE_arrayLiteral = 2, 
          RULE_arrayInitializer = 3, RULE_assignment = 4, RULE_variableAccessor = 5, 
          RULE_typedAssignment = 6, RULE_forLoop = 7, RULE_statement = 8, 
          RULE_program = 9, RULE_whileLoop = 10, RULE_booleanOperand = 11, 
          RULE_booleanExpression = 12, RULE_block = 13, RULE_ifStatement = 14, 
          RULE_elseBlock = 15, RULE_ifBlock = 16, RULE_stringLengthExpression = 17, 
          RULE_mathOperand = 18, RULE_readFunctionExpression = 19, RULE_mathFunctionExpression = 20, 
          RULE_declAssignStatement = 21, RULE_assignStatement = 22, RULE_writeStatement = 23, 
          RULE_mathExpression = 24;
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
                   TOKEN_Primitive = 28, TOKEN_BinaryBooleanOperator = 29, 
                   TOKEN_UnaryBooleanOperator = 30, TOKEN_BooleanLiteral = 31, 
                   TOKEN_Comparator = 32, TOKEN_Number = 33, TOKEN_MathOperator = 34, 
                   TOKEN_StringLiteral = 35, TOKEN_WS = 36, TOKEN_Identifier = 37;

  @override
  final List<String> ruleNames = [
    'type', 'arrayLiteralElement', 'arrayLiteral', 'arrayInitializer', 'assignment', 
    'variableAccessor', 'typedAssignment', 'forLoop', 'statement', 'program', 
    'whileLoop', 'booleanOperand', 'booleanExpression', 'block', 'ifStatement', 
    'elseBlock', 'ifBlock', 'stringLengthExpression', 'mathOperand', 'readFunctionExpression', 
    'mathFunctionExpression', 'declAssignStatement', 'assignStatement', 
    'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'array<'", "'>'", "'{'", "'}'", "','", "'['", "']'", "'='", 
      "'for'", "'('", "';'", "')'", "'while'", "'if'", "'else'", "'length('", 
      "'readInt()'", "'readFloat()'", "'readString()'", "'floor'", "'ceil'", 
      "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", "'write'", null, null, 
      "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, "Primitive", "BinaryBooleanOperator", 
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
      state = 54;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 50;
        match(TOKEN_Primitive);
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 2);
        state = 51;
        match(TOKEN_T__0);
        state = 52;
        match(TOKEN_Primitive);
        state = 53;
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

  ArrayLiteralElementContext arrayLiteralElement() {
    dynamic _localctx = ArrayLiteralElementContext(context, state);
    enterRule(_localctx, 2, RULE_arrayLiteralElement);
    try {
      state = 61;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 56;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 57;
        match(TOKEN_Identifier);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 3);
        state = 58;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 4);
        state = 59;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 5);
        state = 60;
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
      state = 76;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 63;
        match(TOKEN_T__2);
        state = 64;
        match(TOKEN_T__3);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 65;
        match(TOKEN_T__2);
        state = 66;
        arrayLiteralElement();
        state = 71;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__4) {
          state = 67;
          match(TOKEN_T__4);
          state = 68;
          arrayLiteralElement();
          state = 73;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 74;
        match(TOKEN_T__3);
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
      state = 78;
      match(TOKEN_T__0);
      state = 79;
      match(TOKEN_Primitive);
      state = 80;
      match(TOKEN_T__1);
      state = 81;
      match(TOKEN_T__5);
      state = 82;
      match(TOKEN_Number);
      state = 83;
      match(TOKEN_T__6);
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
      state = 85;
      variableAccessor();
      state = 86;
      match(TOKEN_T__7);
      state = 93;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        state = 87;
        mathExpression();
        break;
      case 2:
        state = 88;
        readFunctionExpression();
        break;
      case 3:
        state = 89;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        state = 90;
        booleanExpression();
        break;
      case 5:
        state = 91;
        arrayInitializer();
        break;
      case 6:
        state = 92;
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 10, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 95;
      match(TOKEN_Identifier);
      state = 100;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__5) {
        state = 96;
        match(TOKEN_T__5);
        state = 97;
        mathExpression();
        state = 98;
        match(TOKEN_T__6);
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
    enterRule(_localctx, 12, RULE_typedAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 102;
      type();
      state = 103;
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
    enterRule(_localctx, 14, RULE_forLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 105;
      match(TOKEN_T__8);
      state = 106;
      match(TOKEN_T__9);
      state = 107;
      typedAssignment();
      state = 108;
      match(TOKEN_T__10);
      state = 109;
      booleanExpression();
      state = 110;
      match(TOKEN_T__10);
      state = 111;
      assignment();
      state = 112;
      match(TOKEN_T__11);
      state = 113;
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
    enterRule(_localctx, 16, RULE_statement);
    try {
      state = 121;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__26:
        enterOuterAlt(_localctx, 1);
        state = 115;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 116;
        assignStatement();
        break;
      case TOKEN_T__0:
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 3);
        state = 117;
        declAssignStatement();
        break;
      case TOKEN_T__13:
        enterOuterAlt(_localctx, 4);
        state = 118;
        ifBlock();
        break;
      case TOKEN_T__12:
        enterOuterAlt(_localctx, 5);
        state = 119;
        whileLoop();
        break;
      case TOKEN_T__8:
        enterOuterAlt(_localctx, 6);
        state = 120;
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
    enterRule(_localctx, 18, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 126;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137841631746) != 0)) {
        state = 123;
        statement();
        state = 128;
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
    enterRule(_localctx, 20, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 129;
      match(TOKEN_T__12);
      state = 130;
      match(TOKEN_T__9);
      state = 131;
      booleanExpression();
      state = 132;
      match(TOKEN_T__11);
      state = 133;
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
      state = 141;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 135;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 136;
        variableAccessor();
        break;
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 3);
        state = 137;
        match(TOKEN_T__9);
        state = 138;
        booleanExpression();
        state = 139;
        match(TOKEN_T__11);
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
      state = 154;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 143;
        match(TOKEN_UnaryBooleanOperator);
        state = 144;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 145;
        mathOperand();
        state = 146;
        match(TOKEN_Comparator);
        state = 147;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 149;
        booleanOperand();
        state = 152;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 150;
          match(TOKEN_BinaryBooleanOperator);
          state = 151;
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
      state = 156;
      match(TOKEN_T__2);
      state = 158; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 157;
        statement();
        state = 160; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137841631746) != 0));
      state = 162;
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
    enterRule(_localctx, 28, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 164;
      match(TOKEN_T__13);
      state = 165;
      match(TOKEN_T__9);
      state = 166;
      booleanExpression();
      state = 167;
      match(TOKEN_T__11);
      state = 168;
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
      state = 170;
      match(TOKEN_T__14);
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

  IfBlockContext ifBlock() {
    dynamic _localctx = IfBlockContext(context, state);
    enterRule(_localctx, 32, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 173;
      ifStatement();
      state = 178;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 174;
          match(TOKEN_T__14);
          state = 175;
          ifStatement(); 
        }
        state = 180;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 12, context);
      }
      state = 182;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__14) {
        state = 181;
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
    enterRule(_localctx, 34, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 184;
      match(TOKEN_T__15);
      state = 185;
      variableAccessor();
      state = 186;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 36, RULE_mathOperand);
    try {
      state = 196;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 188;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 189;
        variableAccessor();
        break;
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 3);
        state = 190;
        match(TOKEN_T__9);
        state = 191;
        mathExpression();
        state = 192;
        match(TOKEN_T__11);
        break;
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
        enterOuterAlt(_localctx, 4);
        state = 194;
        mathFunctionExpression();
        break;
      case TOKEN_T__15:
        enterOuterAlt(_localctx, 5);
        state = 195;
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
    enterRule(_localctx, 38, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 198;
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
      state = 200;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 133169152) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 201;
      match(TOKEN_T__9);
      state = 202;
      mathExpression();
      state = 203;
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 42, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 205;
      type();
      state = 206;
      assignment();
      state = 207;
      match(TOKEN_T__10);
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
    enterRule(_localctx, 44, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 209;
      assignment();
      state = 210;
      match(TOKEN_T__10);
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
    enterRule(_localctx, 46, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 212;
      match(TOKEN_T__26);
      state = 213;
      match(TOKEN_T__9);
      state = 217;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 214;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 215;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 216;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 219;
      match(TOKEN_T__11);
      state = 220;
      match(TOKEN_T__10);
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
    enterRule(_localctx, 48, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 222;
      mathOperand();
      state = 225;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 223;
        match(TOKEN_MathOperator);
        state = 224;
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
      4,1,37,228,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,1,0,1,0,1,0,1,0,3,0,55,8,0,
      1,1,1,1,1,1,1,1,1,1,3,1,62,8,1,1,2,1,2,1,2,1,2,1,2,1,2,5,2,70,8,2,
      10,2,12,2,73,9,2,1,2,1,2,3,2,77,8,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,
      4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,94,8,4,1,5,1,5,1,5,1,5,1,5,3,5,101,
      8,5,1,6,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,8,1,8,1,
      8,1,8,1,8,1,8,3,8,122,8,8,1,9,5,9,125,8,9,10,9,12,9,128,9,9,1,10,1,
      10,1,10,1,10,1,10,1,10,1,11,1,11,1,11,1,11,1,11,1,11,3,11,142,8,11,
      1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,3,12,153,8,12,3,12,155,
      8,12,1,13,1,13,4,13,159,8,13,11,13,12,13,160,1,13,1,13,1,14,1,14,1,
      14,1,14,1,14,1,14,1,15,1,15,1,15,1,16,1,16,1,16,5,16,177,8,16,10,16,
      12,16,180,9,16,1,16,3,16,183,8,16,1,17,1,17,1,17,1,17,1,18,1,18,1,
      18,1,18,1,18,1,18,1,18,1,18,3,18,197,8,18,1,19,1,19,1,20,1,20,1,20,
      1,20,1,20,1,21,1,21,1,21,1,21,1,22,1,22,1,22,1,23,1,23,1,23,1,23,1,
      23,3,23,218,8,23,1,23,1,23,1,23,1,24,1,24,1,24,3,24,226,8,24,1,24,
      0,0,25,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,
      44,46,48,0,2,1,0,17,19,1,0,20,26,236,0,54,1,0,0,0,2,61,1,0,0,0,4,76,
      1,0,0,0,6,78,1,0,0,0,8,85,1,0,0,0,10,95,1,0,0,0,12,102,1,0,0,0,14,
      105,1,0,0,0,16,121,1,0,0,0,18,126,1,0,0,0,20,129,1,0,0,0,22,141,1,
      0,0,0,24,154,1,0,0,0,26,156,1,0,0,0,28,164,1,0,0,0,30,170,1,0,0,0,
      32,173,1,0,0,0,34,184,1,0,0,0,36,196,1,0,0,0,38,198,1,0,0,0,40,200,
      1,0,0,0,42,205,1,0,0,0,44,209,1,0,0,0,46,212,1,0,0,0,48,222,1,0,0,
      0,50,55,5,28,0,0,51,52,5,1,0,0,52,53,5,28,0,0,53,55,5,2,0,0,54,50,
      1,0,0,0,54,51,1,0,0,0,55,1,1,0,0,0,56,62,5,33,0,0,57,62,5,37,0,0,58,
      62,5,35,0,0,59,62,5,31,0,0,60,62,3,4,2,0,61,56,1,0,0,0,61,57,1,0,0,
      0,61,58,1,0,0,0,61,59,1,0,0,0,61,60,1,0,0,0,62,3,1,0,0,0,63,64,5,3,
      0,0,64,77,5,4,0,0,65,66,5,3,0,0,66,71,3,2,1,0,67,68,5,5,0,0,68,70,
      3,2,1,0,69,67,1,0,0,0,70,73,1,0,0,0,71,69,1,0,0,0,71,72,1,0,0,0,72,
      74,1,0,0,0,73,71,1,0,0,0,74,75,5,4,0,0,75,77,1,0,0,0,76,63,1,0,0,0,
      76,65,1,0,0,0,77,5,1,0,0,0,78,79,5,1,0,0,79,80,5,28,0,0,80,81,5,2,
      0,0,81,82,5,6,0,0,82,83,5,33,0,0,83,84,5,7,0,0,84,7,1,0,0,0,85,86,
      3,10,5,0,86,93,5,8,0,0,87,94,3,48,24,0,88,94,3,38,19,0,89,94,5,35,
      0,0,90,94,3,24,12,0,91,94,3,6,3,0,92,94,3,4,2,0,93,87,1,0,0,0,93,88,
      1,0,0,0,93,89,1,0,0,0,93,90,1,0,0,0,93,91,1,0,0,0,93,92,1,0,0,0,94,
      9,1,0,0,0,95,100,5,37,0,0,96,97,5,6,0,0,97,98,3,48,24,0,98,99,5,7,
      0,0,99,101,1,0,0,0,100,96,1,0,0,0,100,101,1,0,0,0,101,11,1,0,0,0,102,
      103,3,0,0,0,103,104,3,8,4,0,104,13,1,0,0,0,105,106,5,9,0,0,106,107,
      5,10,0,0,107,108,3,12,6,0,108,109,5,11,0,0,109,110,3,24,12,0,110,111,
      5,11,0,0,111,112,3,8,4,0,112,113,5,12,0,0,113,114,3,26,13,0,114,15,
      1,0,0,0,115,122,3,46,23,0,116,122,3,44,22,0,117,122,3,42,21,0,118,
      122,3,32,16,0,119,122,3,20,10,0,120,122,3,14,7,0,121,115,1,0,0,0,121,
      116,1,0,0,0,121,117,1,0,0,0,121,118,1,0,0,0,121,119,1,0,0,0,121,120,
      1,0,0,0,122,17,1,0,0,0,123,125,3,16,8,0,124,123,1,0,0,0,125,128,1,
      0,0,0,126,124,1,0,0,0,126,127,1,0,0,0,127,19,1,0,0,0,128,126,1,0,0,
      0,129,130,5,13,0,0,130,131,5,10,0,0,131,132,3,24,12,0,132,133,5,12,
      0,0,133,134,3,26,13,0,134,21,1,0,0,0,135,142,5,31,0,0,136,142,3,10,
      5,0,137,138,5,10,0,0,138,139,3,24,12,0,139,140,5,12,0,0,140,142,1,
      0,0,0,141,135,1,0,0,0,141,136,1,0,0,0,141,137,1,0,0,0,142,23,1,0,0,
      0,143,144,5,30,0,0,144,155,3,22,11,0,145,146,3,36,18,0,146,147,5,32,
      0,0,147,148,3,36,18,0,148,155,1,0,0,0,149,152,3,22,11,0,150,151,5,
      29,0,0,151,153,3,22,11,0,152,150,1,0,0,0,152,153,1,0,0,0,153,155,1,
      0,0,0,154,143,1,0,0,0,154,145,1,0,0,0,154,149,1,0,0,0,155,25,1,0,0,
      0,156,158,5,3,0,0,157,159,3,16,8,0,158,157,1,0,0,0,159,160,1,0,0,0,
      160,158,1,0,0,0,160,161,1,0,0,0,161,162,1,0,0,0,162,163,5,4,0,0,163,
      27,1,0,0,0,164,165,5,14,0,0,165,166,5,10,0,0,166,167,3,24,12,0,167,
      168,5,12,0,0,168,169,3,26,13,0,169,29,1,0,0,0,170,171,5,15,0,0,171,
      172,3,26,13,0,172,31,1,0,0,0,173,178,3,28,14,0,174,175,5,15,0,0,175,
      177,3,28,14,0,176,174,1,0,0,0,177,180,1,0,0,0,178,176,1,0,0,0,178,
      179,1,0,0,0,179,182,1,0,0,0,180,178,1,0,0,0,181,183,3,30,15,0,182,
      181,1,0,0,0,182,183,1,0,0,0,183,33,1,0,0,0,184,185,5,16,0,0,185,186,
      3,10,5,0,186,187,5,12,0,0,187,35,1,0,0,0,188,197,5,33,0,0,189,197,
      3,10,5,0,190,191,5,10,0,0,191,192,3,48,24,0,192,193,5,12,0,0,193,197,
      1,0,0,0,194,197,3,40,20,0,195,197,3,34,17,0,196,188,1,0,0,0,196,189,
      1,0,0,0,196,190,1,0,0,0,196,194,1,0,0,0,196,195,1,0,0,0,197,37,1,0,
      0,0,198,199,7,0,0,0,199,39,1,0,0,0,200,201,7,1,0,0,201,202,5,10,0,
      0,202,203,3,48,24,0,203,204,5,12,0,0,204,41,1,0,0,0,205,206,3,0,0,
      0,206,207,3,8,4,0,207,208,5,11,0,0,208,43,1,0,0,0,209,210,3,8,4,0,
      210,211,5,11,0,0,211,45,1,0,0,0,212,213,5,27,0,0,213,217,5,10,0,0,
      214,218,3,10,5,0,215,218,5,33,0,0,216,218,5,35,0,0,217,214,1,0,0,0,
      217,215,1,0,0,0,217,216,1,0,0,0,218,219,1,0,0,0,219,220,5,12,0,0,220,
      221,5,11,0,0,221,47,1,0,0,0,222,225,3,36,18,0,223,224,5,34,0,0,224,
      226,3,36,18,0,225,223,1,0,0,0,225,226,1,0,0,0,226,49,1,0,0,0,17,54,
      61,71,76,93,100,121,126,141,152,154,160,178,182,196,217,225
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

