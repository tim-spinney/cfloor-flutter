// Generated from grammars/CFloor6.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor6Listener.dart';
import 'CFloor6BaseListener.dart';
const int RULE_type = 0, RULE_arrayLiteralElement = 1, RULE_arrayLiteral = 2, 
          RULE_arrayInitializer = 3, RULE_assignment = 4, RULE_variableAccessor = 5, 
          RULE_typedAssignment = 6, RULE_forLoop = 7, RULE_statement = 8, 
          RULE_whileLoop = 9, RULE_booleanOperand = 10, RULE_booleanExpression = 11, 
          RULE_block = 12, RULE_ifStatement = 13, RULE_elseBlock = 14, RULE_ifBlock = 15, 
          RULE_program = 16, RULE_stringLengthExpression = 17, RULE_mathOperand = 18, 
          RULE_readFunctionExpression = 19, RULE_mathFunctionExpression = 20, 
          RULE_declAssignStatement = 21, RULE_assignStatement = 22, RULE_writeStatement = 23, 
          RULE_mathExpression = 24;
class CFloor6Parser extends Parser {
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
                   TOKEN_T__24 = 25, TOKEN_T__25 = 26, TOKEN_T__26 = 27, 
                   TOKEN_Primitive = 28, TOKEN_BinaryBooleanOperator = 29, 
                   TOKEN_UnaryBooleanOperator = 30, TOKEN_BooleanLiteral = 31, 
                   TOKEN_Comparator = 32, TOKEN_Number = 33, TOKEN_MathOperator = 34, 
                   TOKEN_StringLiteral = 35, TOKEN_WS = 36, TOKEN_Identifier = 37;

  @override
  final List<String> ruleNames = [
    'type', 'arrayLiteralElement', 'arrayLiteral', 'arrayInitializer', 'assignment', 
    'variableAccessor', 'typedAssignment', 'forLoop', 'statement', 'whileLoop', 
    'booleanOperand', 'booleanExpression', 'block', 'ifStatement', 'elseBlock', 
    'ifBlock', 'program', 'stringLengthExpression', 'mathOperand', 'readFunctionExpression', 
    'mathFunctionExpression', 'declAssignStatement', 'assignStatement', 
    'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'array<'", "'>'", "'{'", "'}'", "','", "'['", "']'", "'='", 
      "'for'", "'('", "';'", "')'", "'while'", "'if'", "'else'", "'length('", 
      "'read_int()'", "'read_float()'", "'read_string()'", "'floor'", "'ceil'", 
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
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 2);
        state = 57;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 3);
        state = 58;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 4);
        state = 59;
        arrayLiteral();
        break;
      case TOKEN_T__0:
        enterOuterAlt(_localctx, 5);
        state = 60;
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

  WhileLoopContext whileLoop() {
    dynamic _localctx = WhileLoopContext(context, state);
    enterRule(_localctx, 18, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 123;
      match(TOKEN_T__12);
      state = 124;
      match(TOKEN_T__9);
      state = 125;
      booleanExpression();
      state = 126;
      match(TOKEN_T__11);
      state = 127;
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
    enterRule(_localctx, 20, RULE_booleanOperand);
    try {
      state = 135;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 129;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 130;
        variableAccessor();
        break;
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 3);
        state = 131;
        match(TOKEN_T__9);
        state = 132;
        booleanExpression();
        state = 133;
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
    enterRule(_localctx, 22, RULE_booleanExpression);
    int _la;
    try {
      state = 148;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 9, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 137;
        match(TOKEN_UnaryBooleanOperator);
        state = 138;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 139;
        mathOperand();
        state = 140;
        match(TOKEN_Comparator);
        state = 141;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 143;
        booleanOperand();
        state = 146;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 144;
          match(TOKEN_BinaryBooleanOperator);
          state = 145;
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
    enterRule(_localctx, 24, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 150;
      match(TOKEN_T__2);
      state = 152; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 151;
        statement();
        state = 154; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137841631746) != 0));
      state = 156;
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
    enterRule(_localctx, 26, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 158;
      match(TOKEN_T__13);
      state = 159;
      match(TOKEN_T__9);
      state = 160;
      booleanExpression();
      state = 161;
      match(TOKEN_T__11);
      state = 162;
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
    enterRule(_localctx, 28, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 164;
      match(TOKEN_T__14);
      state = 165;
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
    enterRule(_localctx, 30, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 167;
      ifStatement();
      state = 172;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 168;
          match(TOKEN_T__14);
          state = 169;
          ifStatement(); 
        }
        state = 174;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
      }
      state = 176;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__14) {
        state = 175;
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
    enterRule(_localctx, 32, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 179; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 178;
        statement();
        state = 181; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137841631746) != 0));
      state = 183;
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
    enterRule(_localctx, 34, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 185;
      match(TOKEN_T__15);
      state = 186;
      variableAccessor();
      state = 187;
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
      state = 197;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 189;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 190;
        variableAccessor();
        break;
      case TOKEN_T__9:
        enterOuterAlt(_localctx, 3);
        state = 191;
        match(TOKEN_T__9);
        state = 192;
        mathExpression();
        state = 193;
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
        state = 195;
        mathFunctionExpression();
        break;
      case TOKEN_T__15:
        enterOuterAlt(_localctx, 5);
        state = 196;
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
      state = 199;
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
      state = 201;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 133169152) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 202;
      match(TOKEN_T__9);
      state = 203;
      mathExpression();
      state = 204;
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
      state = 206;
      type();
      state = 207;
      assignment();
      state = 208;
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
      state = 210;
      assignment();
      state = 211;
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
      state = 213;
      match(TOKEN_T__26);
      state = 214;
      match(TOKEN_T__9);
      state = 218;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 215;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 216;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 217;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 220;
      match(TOKEN_T__11);
      state = 221;
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
      state = 223;
      mathOperand();
      state = 226;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 224;
        match(TOKEN_MathOperator);
        state = 225;
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
      4,1,37,229,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,1,0,1,0,1,0,1,0,3,0,55,8,0,
      1,1,1,1,1,1,1,1,1,1,3,1,62,8,1,1,2,1,2,1,2,1,2,1,2,1,2,5,2,70,8,2,
      10,2,12,2,73,9,2,1,2,1,2,3,2,77,8,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,
      4,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,94,8,4,1,5,1,5,1,5,1,5,1,5,3,5,101,
      8,5,1,6,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,8,1,8,1,
      8,1,8,1,8,1,8,3,8,122,8,8,1,9,1,9,1,9,1,9,1,9,1,9,1,10,1,10,1,10,1,
      10,1,10,1,10,3,10,136,8,10,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,
      1,11,3,11,147,8,11,3,11,149,8,11,1,12,1,12,4,12,153,8,12,11,12,12,
      12,154,1,12,1,12,1,13,1,13,1,13,1,13,1,13,1,13,1,14,1,14,1,14,1,15,
      1,15,1,15,5,15,171,8,15,10,15,12,15,174,9,15,1,15,3,15,177,8,15,1,
      16,4,16,180,8,16,11,16,12,16,181,1,16,1,16,1,17,1,17,1,17,1,17,1,18,
      1,18,1,18,1,18,1,18,1,18,1,18,1,18,3,18,198,8,18,1,19,1,19,1,20,1,
      20,1,20,1,20,1,20,1,21,1,21,1,21,1,21,1,22,1,22,1,22,1,23,1,23,1,23,
      1,23,1,23,3,23,219,8,23,1,23,1,23,1,23,1,24,1,24,1,24,3,24,227,8,24,
      1,24,0,0,25,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,
      40,42,44,46,48,0,2,1,0,17,19,1,0,20,26,237,0,54,1,0,0,0,2,61,1,0,0,
      0,4,76,1,0,0,0,6,78,1,0,0,0,8,85,1,0,0,0,10,95,1,0,0,0,12,102,1,0,
      0,0,14,105,1,0,0,0,16,121,1,0,0,0,18,123,1,0,0,0,20,135,1,0,0,0,22,
      148,1,0,0,0,24,150,1,0,0,0,26,158,1,0,0,0,28,164,1,0,0,0,30,167,1,
      0,0,0,32,179,1,0,0,0,34,185,1,0,0,0,36,197,1,0,0,0,38,199,1,0,0,0,
      40,201,1,0,0,0,42,206,1,0,0,0,44,210,1,0,0,0,46,213,1,0,0,0,48,223,
      1,0,0,0,50,55,5,28,0,0,51,52,5,1,0,0,52,53,5,28,0,0,53,55,5,2,0,0,
      54,50,1,0,0,0,54,51,1,0,0,0,55,1,1,0,0,0,56,62,5,33,0,0,57,62,5,35,
      0,0,58,62,5,31,0,0,59,62,3,4,2,0,60,62,3,6,3,0,61,56,1,0,0,0,61,57,
      1,0,0,0,61,58,1,0,0,0,61,59,1,0,0,0,61,60,1,0,0,0,62,3,1,0,0,0,63,
      64,5,3,0,0,64,77,5,4,0,0,65,66,5,3,0,0,66,71,3,2,1,0,67,68,5,5,0,0,
      68,70,3,2,1,0,69,67,1,0,0,0,70,73,1,0,0,0,71,69,1,0,0,0,71,72,1,0,
      0,0,72,74,1,0,0,0,73,71,1,0,0,0,74,75,5,4,0,0,75,77,1,0,0,0,76,63,
      1,0,0,0,76,65,1,0,0,0,77,5,1,0,0,0,78,79,5,1,0,0,79,80,5,28,0,0,80,
      81,5,2,0,0,81,82,5,6,0,0,82,83,5,33,0,0,83,84,5,7,0,0,84,7,1,0,0,0,
      85,86,3,10,5,0,86,93,5,8,0,0,87,94,3,48,24,0,88,94,3,38,19,0,89,94,
      5,35,0,0,90,94,3,22,11,0,91,94,3,6,3,0,92,94,3,4,2,0,93,87,1,0,0,0,
      93,88,1,0,0,0,93,89,1,0,0,0,93,90,1,0,0,0,93,91,1,0,0,0,93,92,1,0,
      0,0,94,9,1,0,0,0,95,100,5,37,0,0,96,97,5,6,0,0,97,98,3,48,24,0,98,
      99,5,7,0,0,99,101,1,0,0,0,100,96,1,0,0,0,100,101,1,0,0,0,101,11,1,
      0,0,0,102,103,3,0,0,0,103,104,3,8,4,0,104,13,1,0,0,0,105,106,5,9,0,
      0,106,107,5,10,0,0,107,108,3,12,6,0,108,109,5,11,0,0,109,110,3,22,
      11,0,110,111,5,11,0,0,111,112,3,8,4,0,112,113,5,12,0,0,113,114,3,24,
      12,0,114,15,1,0,0,0,115,122,3,46,23,0,116,122,3,44,22,0,117,122,3,
      42,21,0,118,122,3,30,15,0,119,122,3,18,9,0,120,122,3,14,7,0,121,115,
      1,0,0,0,121,116,1,0,0,0,121,117,1,0,0,0,121,118,1,0,0,0,121,119,1,
      0,0,0,121,120,1,0,0,0,122,17,1,0,0,0,123,124,5,13,0,0,124,125,5,10,
      0,0,125,126,3,22,11,0,126,127,5,12,0,0,127,128,3,24,12,0,128,19,1,
      0,0,0,129,136,5,31,0,0,130,136,3,10,5,0,131,132,5,10,0,0,132,133,3,
      22,11,0,133,134,5,12,0,0,134,136,1,0,0,0,135,129,1,0,0,0,135,130,1,
      0,0,0,135,131,1,0,0,0,136,21,1,0,0,0,137,138,5,30,0,0,138,149,3,20,
      10,0,139,140,3,36,18,0,140,141,5,32,0,0,141,142,3,36,18,0,142,149,
      1,0,0,0,143,146,3,20,10,0,144,145,5,29,0,0,145,147,3,20,10,0,146,144,
      1,0,0,0,146,147,1,0,0,0,147,149,1,0,0,0,148,137,1,0,0,0,148,139,1,
      0,0,0,148,143,1,0,0,0,149,23,1,0,0,0,150,152,5,3,0,0,151,153,3,16,
      8,0,152,151,1,0,0,0,153,154,1,0,0,0,154,152,1,0,0,0,154,155,1,0,0,
      0,155,156,1,0,0,0,156,157,5,4,0,0,157,25,1,0,0,0,158,159,5,14,0,0,
      159,160,5,10,0,0,160,161,3,22,11,0,161,162,5,12,0,0,162,163,3,24,12,
      0,163,27,1,0,0,0,164,165,5,15,0,0,165,166,3,24,12,0,166,29,1,0,0,0,
      167,172,3,26,13,0,168,169,5,15,0,0,169,171,3,26,13,0,170,168,1,0,0,
      0,171,174,1,0,0,0,172,170,1,0,0,0,172,173,1,0,0,0,173,176,1,0,0,0,
      174,172,1,0,0,0,175,177,3,28,14,0,176,175,1,0,0,0,176,177,1,0,0,0,
      177,31,1,0,0,0,178,180,3,16,8,0,179,178,1,0,0,0,180,181,1,0,0,0,181,
      179,1,0,0,0,181,182,1,0,0,0,182,183,1,0,0,0,183,184,5,0,0,1,184,33,
      1,0,0,0,185,186,5,16,0,0,186,187,3,10,5,0,187,188,5,12,0,0,188,35,
      1,0,0,0,189,198,5,33,0,0,190,198,3,10,5,0,191,192,5,10,0,0,192,193,
      3,48,24,0,193,194,5,12,0,0,194,198,1,0,0,0,195,198,3,40,20,0,196,198,
      3,34,17,0,197,189,1,0,0,0,197,190,1,0,0,0,197,191,1,0,0,0,197,195,
      1,0,0,0,197,196,1,0,0,0,198,37,1,0,0,0,199,200,7,0,0,0,200,39,1,0,
      0,0,201,202,7,1,0,0,202,203,5,10,0,0,203,204,3,48,24,0,204,205,5,12,
      0,0,205,41,1,0,0,0,206,207,3,0,0,0,207,208,3,8,4,0,208,209,5,11,0,
      0,209,43,1,0,0,0,210,211,3,8,4,0,211,212,5,11,0,0,212,45,1,0,0,0,213,
      214,5,27,0,0,214,218,5,10,0,0,215,219,3,10,5,0,216,219,5,33,0,0,217,
      219,5,35,0,0,218,215,1,0,0,0,218,216,1,0,0,0,218,217,1,0,0,0,219,220,
      1,0,0,0,220,221,5,12,0,0,221,222,5,11,0,0,222,47,1,0,0,0,223,226,3,
      36,18,0,224,225,5,34,0,0,225,227,3,36,18,0,226,224,1,0,0,0,226,227,
      1,0,0,0,227,49,1,0,0,0,17,54,61,71,76,93,100,121,135,146,148,154,172,
      176,181,197,218,226
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

