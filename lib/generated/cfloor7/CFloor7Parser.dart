// Generated from grammars/CFloor7.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor7Listener.dart';
import 'CFloor7BaseListener.dart';
const int RULE_parameter = 0, RULE_parameterList = 1, RULE_functionDefinition = 2, 
          RULE_type = 3, RULE_arrayLiteralElement = 4, RULE_arrayLiteral = 5, 
          RULE_arrayInitializer = 6, RULE_assignment = 7, RULE_variableAccessor = 8, 
          RULE_typedAssignment = 9, RULE_forLoop = 10, RULE_statement = 11, 
          RULE_whileLoop = 12, RULE_booleanOperand = 13, RULE_booleanExpression = 14, 
          RULE_block = 15, RULE_ifStatement = 16, RULE_elseBlock = 17, RULE_ifBlock = 18, 
          RULE_stringLengthExpression = 19, RULE_mathOperand = 20, RULE_readFunctionExpression = 21, 
          RULE_mathFunctionExpression = 22, RULE_program = 23, RULE_declAssignStatement = 24, 
          RULE_assignStatement = 25, RULE_writeStatement = 26, RULE_mathExpression = 27;
class CFloor7Parser extends Parser {
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
    'parameter', 'parameterList', 'functionDefinition', 'type', 'arrayLiteralElement', 
    'arrayLiteral', 'arrayInitializer', 'assignment', 'variableAccessor', 
    'typedAssignment', 'forLoop', 'statement', 'whileLoop', 'booleanOperand', 
    'booleanExpression', 'block', 'ifStatement', 'elseBlock', 'ifBlock', 
    'stringLengthExpression', 'mathOperand', 'readFunctionExpression', 'mathFunctionExpression', 
    'program', 'declAssignStatement', 'assignStatement', 'writeStatement', 
    'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "','", "'('", "')'", "'array<'", "'>'", "'{'", "'}'", "'['", 
      "']'", "'='", "'for'", "';'", "'while'", "'if'", "'else'", "'length('", 
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
  String get grammarFileName => 'CFloor7.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  CFloor7Parser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ParameterContext parameter() {
    dynamic _localctx = ParameterContext(context, state);
    enterRule(_localctx, 0, RULE_parameter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 56;
      type();
      state = 57;
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

  ParameterListContext parameterList() {
    dynamic _localctx = ParameterListContext(context, state);
    enterRule(_localctx, 2, RULE_parameterList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 67;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__3 || _la == TOKEN_Primitive) {
        state = 59;
        parameter();
        state = 64;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__0) {
          state = 60;
          match(TOKEN_T__0);
          state = 61;
          parameter();
          state = 66;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
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

  FunctionDefinitionContext functionDefinition() {
    dynamic _localctx = FunctionDefinitionContext(context, state);
    enterRule(_localctx, 4, RULE_functionDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 69;
      type();
      state = 70;
      match(TOKEN_Identifier);
      state = 71;
      match(TOKEN_T__1);
      state = 72;
      parameterList();
      state = 73;
      match(TOKEN_T__2);
      state = 74;
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
    enterRule(_localctx, 6, RULE_type);
    try {
      state = 80;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 76;
        match(TOKEN_Primitive);
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 2);
        state = 77;
        match(TOKEN_T__3);
        state = 78;
        match(TOKEN_Primitive);
        state = 79;
        match(TOKEN_T__4);
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
    enterRule(_localctx, 8, RULE_arrayLiteralElement);
    try {
      state = 87;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 82;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 2);
        state = 83;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 3);
        state = 84;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__5:
        enterOuterAlt(_localctx, 4);
        state = 85;
        arrayLiteral();
        break;
      case TOKEN_T__3:
        enterOuterAlt(_localctx, 5);
        state = 86;
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
    enterRule(_localctx, 10, RULE_arrayLiteral);
    int _la;
    try {
      state = 102;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 5, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 89;
        match(TOKEN_T__5);
        state = 90;
        match(TOKEN_T__6);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 91;
        match(TOKEN_T__5);
        state = 92;
        arrayLiteralElement();
        state = 97;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__0) {
          state = 93;
          match(TOKEN_T__0);
          state = 94;
          arrayLiteralElement();
          state = 99;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 100;
        match(TOKEN_T__6);
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
    enterRule(_localctx, 12, RULE_arrayInitializer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 104;
      match(TOKEN_T__3);
      state = 105;
      match(TOKEN_Primitive);
      state = 106;
      match(TOKEN_T__4);
      state = 107;
      match(TOKEN_T__7);
      state = 108;
      match(TOKEN_Number);
      state = 109;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 14, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 111;
      variableAccessor();
      state = 112;
      match(TOKEN_T__9);
      state = 119;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 6, context)) {
      case 1:
        state = 113;
        mathExpression();
        break;
      case 2:
        state = 114;
        readFunctionExpression();
        break;
      case 3:
        state = 115;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        state = 116;
        booleanExpression();
        break;
      case 5:
        state = 117;
        arrayInitializer();
        break;
      case 6:
        state = 118;
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
    enterRule(_localctx, 16, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 121;
      match(TOKEN_Identifier);
      state = 126;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__7) {
        state = 122;
        match(TOKEN_T__7);
        state = 123;
        mathExpression();
        state = 124;
        match(TOKEN_T__8);
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
      state = 128;
      type();
      state = 129;
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
    enterRule(_localctx, 20, RULE_forLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 131;
      match(TOKEN_T__10);
      state = 132;
      match(TOKEN_T__1);
      state = 133;
      typedAssignment();
      state = 134;
      match(TOKEN_T__11);
      state = 135;
      booleanExpression();
      state = 136;
      match(TOKEN_T__11);
      state = 137;
      assignment();
      state = 138;
      match(TOKEN_T__2);
      state = 139;
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
    enterRule(_localctx, 22, RULE_statement);
    try {
      state = 147;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__26:
        enterOuterAlt(_localctx, 1);
        state = 141;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 142;
        assignStatement();
        break;
      case TOKEN_T__3:
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 3);
        state = 143;
        declAssignStatement();
        break;
      case TOKEN_T__13:
        enterOuterAlt(_localctx, 4);
        state = 144;
        ifBlock();
        break;
      case TOKEN_T__12:
        enterOuterAlt(_localctx, 5);
        state = 145;
        whileLoop();
        break;
      case TOKEN_T__10:
        enterOuterAlt(_localctx, 6);
        state = 146;
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
    enterRule(_localctx, 24, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 149;
      match(TOKEN_T__12);
      state = 150;
      match(TOKEN_T__1);
      state = 151;
      booleanExpression();
      state = 152;
      match(TOKEN_T__2);
      state = 153;
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
    enterRule(_localctx, 26, RULE_booleanOperand);
    try {
      state = 161;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 155;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 156;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 157;
        match(TOKEN_T__1);
        state = 158;
        booleanExpression();
        state = 159;
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
    enterRule(_localctx, 28, RULE_booleanExpression);
    int _la;
    try {
      state = 174;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 11, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 163;
        match(TOKEN_UnaryBooleanOperator);
        state = 164;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 165;
        mathOperand();
        state = 166;
        match(TOKEN_Comparator);
        state = 167;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 169;
        booleanOperand();
        state = 172;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 170;
          match(TOKEN_BinaryBooleanOperator);
          state = 171;
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
      state = 176;
      match(TOKEN_T__5);
      state = 178; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 177;
        statement();
        state = 180; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137841633296) != 0));
      state = 182;
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

  IfStatementContext ifStatement() {
    dynamic _localctx = IfStatementContext(context, state);
    enterRule(_localctx, 32, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 184;
      match(TOKEN_T__13);
      state = 185;
      match(TOKEN_T__1);
      state = 186;
      booleanExpression();
      state = 187;
      match(TOKEN_T__2);
      state = 188;
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
      state = 190;
      match(TOKEN_T__14);
      state = 191;
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
      state = 193;
      ifStatement();
      state = 198;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 194;
          match(TOKEN_T__14);
          state = 195;
          ifStatement(); 
        }
        state = 200;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 13, context);
      }
      state = 202;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__14) {
        state = 201;
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
    enterRule(_localctx, 38, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 204;
      match(TOKEN_T__15);
      state = 205;
      variableAccessor();
      state = 206;
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
    enterRule(_localctx, 40, RULE_mathOperand);
    try {
      state = 216;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 208;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 209;
        variableAccessor();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 3);
        state = 210;
        match(TOKEN_T__1);
        state = 211;
        mathExpression();
        state = 212;
        match(TOKEN_T__2);
        break;
      case TOKEN_T__19:
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
        enterOuterAlt(_localctx, 4);
        state = 214;
        mathFunctionExpression();
        break;
      case TOKEN_T__15:
        enterOuterAlt(_localctx, 5);
        state = 215;
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
    enterRule(_localctx, 42, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 218;
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
    enterRule(_localctx, 44, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 220;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 133169152) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 221;
      match(TOKEN_T__1);
      state = 222;
      mathExpression();
      state = 223;
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
    enterRule(_localctx, 46, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 226; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 225;
        statement();
        state = 228; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 137841633296) != 0));
      state = 230;
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
      state = 232;
      type();
      state = 233;
      assignment();
      state = 234;
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
    enterRule(_localctx, 50, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 236;
      assignment();
      state = 237;
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
    enterRule(_localctx, 52, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 239;
      match(TOKEN_T__26);
      state = 240;
      match(TOKEN_T__1);
      state = 244;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 241;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 242;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 243;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 246;
      match(TOKEN_T__2);
      state = 247;
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
    enterRule(_localctx, 54, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 249;
      mathOperand();
      state = 252;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 250;
        match(TOKEN_MathOperator);
        state = 251;
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
      4,1,37,255,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,1,0,1,0,1,0,1,1,1,1,1,1,5,1,63,8,1,10,1,12,1,66,9,1,3,1,68,8,1,
      1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,3,1,3,3,3,81,8,3,1,4,1,4,1,4,
      1,4,1,4,3,4,88,8,4,1,5,1,5,1,5,1,5,1,5,1,5,5,5,96,8,5,10,5,12,5,99,
      9,5,1,5,1,5,3,5,103,8,5,1,6,1,6,1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,7,1,
      7,1,7,1,7,1,7,1,7,3,7,120,8,7,1,8,1,8,1,8,1,8,1,8,3,8,127,8,8,1,9,
      1,9,1,9,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,11,1,11,
      1,11,1,11,1,11,1,11,3,11,148,8,11,1,12,1,12,1,12,1,12,1,12,1,12,1,
      13,1,13,1,13,1,13,1,13,1,13,3,13,162,8,13,1,14,1,14,1,14,1,14,1,14,
      1,14,1,14,1,14,1,14,3,14,173,8,14,3,14,175,8,14,1,15,1,15,4,15,179,
      8,15,11,15,12,15,180,1,15,1,15,1,16,1,16,1,16,1,16,1,16,1,16,1,17,
      1,17,1,17,1,18,1,18,1,18,5,18,197,8,18,10,18,12,18,200,9,18,1,18,3,
      18,203,8,18,1,19,1,19,1,19,1,19,1,20,1,20,1,20,1,20,1,20,1,20,1,20,
      1,20,3,20,217,8,20,1,21,1,21,1,22,1,22,1,22,1,22,1,22,1,23,4,23,227,
      8,23,11,23,12,23,228,1,23,1,23,1,24,1,24,1,24,1,24,1,25,1,25,1,25,
      1,26,1,26,1,26,1,26,1,26,3,26,245,8,26,1,26,1,26,1,26,1,27,1,27,1,
      27,3,27,253,8,27,1,27,0,0,28,0,2,4,6,8,10,12,14,16,18,20,22,24,26,
      28,30,32,34,36,38,40,42,44,46,48,50,52,54,0,2,1,0,17,19,1,0,20,26,
      262,0,56,1,0,0,0,2,67,1,0,0,0,4,69,1,0,0,0,6,80,1,0,0,0,8,87,1,0,0,
      0,10,102,1,0,0,0,12,104,1,0,0,0,14,111,1,0,0,0,16,121,1,0,0,0,18,128,
      1,0,0,0,20,131,1,0,0,0,22,147,1,0,0,0,24,149,1,0,0,0,26,161,1,0,0,
      0,28,174,1,0,0,0,30,176,1,0,0,0,32,184,1,0,0,0,34,190,1,0,0,0,36,193,
      1,0,0,0,38,204,1,0,0,0,40,216,1,0,0,0,42,218,1,0,0,0,44,220,1,0,0,
      0,46,226,1,0,0,0,48,232,1,0,0,0,50,236,1,0,0,0,52,239,1,0,0,0,54,249,
      1,0,0,0,56,57,3,6,3,0,57,58,5,37,0,0,58,1,1,0,0,0,59,64,3,0,0,0,60,
      61,5,1,0,0,61,63,3,0,0,0,62,60,1,0,0,0,63,66,1,0,0,0,64,62,1,0,0,0,
      64,65,1,0,0,0,65,68,1,0,0,0,66,64,1,0,0,0,67,59,1,0,0,0,67,68,1,0,
      0,0,68,3,1,0,0,0,69,70,3,6,3,0,70,71,5,37,0,0,71,72,5,2,0,0,72,73,
      3,2,1,0,73,74,5,3,0,0,74,75,3,30,15,0,75,5,1,0,0,0,76,81,5,28,0,0,
      77,78,5,4,0,0,78,79,5,28,0,0,79,81,5,5,0,0,80,76,1,0,0,0,80,77,1,0,
      0,0,81,7,1,0,0,0,82,88,5,33,0,0,83,88,5,35,0,0,84,88,5,31,0,0,85,88,
      3,10,5,0,86,88,3,12,6,0,87,82,1,0,0,0,87,83,1,0,0,0,87,84,1,0,0,0,
      87,85,1,0,0,0,87,86,1,0,0,0,88,9,1,0,0,0,89,90,5,6,0,0,90,103,5,7,
      0,0,91,92,5,6,0,0,92,97,3,8,4,0,93,94,5,1,0,0,94,96,3,8,4,0,95,93,
      1,0,0,0,96,99,1,0,0,0,97,95,1,0,0,0,97,98,1,0,0,0,98,100,1,0,0,0,99,
      97,1,0,0,0,100,101,5,7,0,0,101,103,1,0,0,0,102,89,1,0,0,0,102,91,1,
      0,0,0,103,11,1,0,0,0,104,105,5,4,0,0,105,106,5,28,0,0,106,107,5,5,
      0,0,107,108,5,8,0,0,108,109,5,33,0,0,109,110,5,9,0,0,110,13,1,0,0,
      0,111,112,3,16,8,0,112,119,5,10,0,0,113,120,3,54,27,0,114,120,3,42,
      21,0,115,120,5,35,0,0,116,120,3,28,14,0,117,120,3,12,6,0,118,120,3,
      10,5,0,119,113,1,0,0,0,119,114,1,0,0,0,119,115,1,0,0,0,119,116,1,0,
      0,0,119,117,1,0,0,0,119,118,1,0,0,0,120,15,1,0,0,0,121,126,5,37,0,
      0,122,123,5,8,0,0,123,124,3,54,27,0,124,125,5,9,0,0,125,127,1,0,0,
      0,126,122,1,0,0,0,126,127,1,0,0,0,127,17,1,0,0,0,128,129,3,6,3,0,129,
      130,3,14,7,0,130,19,1,0,0,0,131,132,5,11,0,0,132,133,5,2,0,0,133,134,
      3,18,9,0,134,135,5,12,0,0,135,136,3,28,14,0,136,137,5,12,0,0,137,138,
      3,14,7,0,138,139,5,3,0,0,139,140,3,30,15,0,140,21,1,0,0,0,141,148,
      3,52,26,0,142,148,3,50,25,0,143,148,3,48,24,0,144,148,3,36,18,0,145,
      148,3,24,12,0,146,148,3,20,10,0,147,141,1,0,0,0,147,142,1,0,0,0,147,
      143,1,0,0,0,147,144,1,0,0,0,147,145,1,0,0,0,147,146,1,0,0,0,148,23,
      1,0,0,0,149,150,5,13,0,0,150,151,5,2,0,0,151,152,3,28,14,0,152,153,
      5,3,0,0,153,154,3,30,15,0,154,25,1,0,0,0,155,162,5,31,0,0,156,162,
      3,16,8,0,157,158,5,2,0,0,158,159,3,28,14,0,159,160,5,3,0,0,160,162,
      1,0,0,0,161,155,1,0,0,0,161,156,1,0,0,0,161,157,1,0,0,0,162,27,1,0,
      0,0,163,164,5,30,0,0,164,175,3,26,13,0,165,166,3,40,20,0,166,167,5,
      32,0,0,167,168,3,40,20,0,168,175,1,0,0,0,169,172,3,26,13,0,170,171,
      5,29,0,0,171,173,3,26,13,0,172,170,1,0,0,0,172,173,1,0,0,0,173,175,
      1,0,0,0,174,163,1,0,0,0,174,165,1,0,0,0,174,169,1,0,0,0,175,29,1,0,
      0,0,176,178,5,6,0,0,177,179,3,22,11,0,178,177,1,0,0,0,179,180,1,0,
      0,0,180,178,1,0,0,0,180,181,1,0,0,0,181,182,1,0,0,0,182,183,5,7,0,
      0,183,31,1,0,0,0,184,185,5,14,0,0,185,186,5,2,0,0,186,187,3,28,14,
      0,187,188,5,3,0,0,188,189,3,30,15,0,189,33,1,0,0,0,190,191,5,15,0,
      0,191,192,3,30,15,0,192,35,1,0,0,0,193,198,3,32,16,0,194,195,5,15,
      0,0,195,197,3,32,16,0,196,194,1,0,0,0,197,200,1,0,0,0,198,196,1,0,
      0,0,198,199,1,0,0,0,199,202,1,0,0,0,200,198,1,0,0,0,201,203,3,34,17,
      0,202,201,1,0,0,0,202,203,1,0,0,0,203,37,1,0,0,0,204,205,5,16,0,0,
      205,206,3,16,8,0,206,207,5,3,0,0,207,39,1,0,0,0,208,217,5,33,0,0,209,
      217,3,16,8,0,210,211,5,2,0,0,211,212,3,54,27,0,212,213,5,3,0,0,213,
      217,1,0,0,0,214,217,3,44,22,0,215,217,3,38,19,0,216,208,1,0,0,0,216,
      209,1,0,0,0,216,210,1,0,0,0,216,214,1,0,0,0,216,215,1,0,0,0,217,41,
      1,0,0,0,218,219,7,0,0,0,219,43,1,0,0,0,220,221,7,1,0,0,221,222,5,2,
      0,0,222,223,3,54,27,0,223,224,5,3,0,0,224,45,1,0,0,0,225,227,3,22,
      11,0,226,225,1,0,0,0,227,228,1,0,0,0,228,226,1,0,0,0,228,229,1,0,0,
      0,229,230,1,0,0,0,230,231,5,0,0,1,231,47,1,0,0,0,232,233,3,6,3,0,233,
      234,3,14,7,0,234,235,5,12,0,0,235,49,1,0,0,0,236,237,3,14,7,0,237,
      238,5,12,0,0,238,51,1,0,0,0,239,240,5,27,0,0,240,244,5,2,0,0,241,245,
      3,16,8,0,242,245,5,33,0,0,243,245,5,35,0,0,244,241,1,0,0,0,244,242,
      1,0,0,0,244,243,1,0,0,0,245,246,1,0,0,0,246,247,5,3,0,0,247,248,5,
      12,0,0,248,53,1,0,0,0,249,252,3,40,20,0,250,251,5,34,0,0,251,253,3,
      40,20,0,252,250,1,0,0,0,252,253,1,0,0,0,253,55,1,0,0,0,19,64,67,80,
      87,97,102,119,126,147,161,172,174,180,198,202,216,228,244,252
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ParameterContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? Identifier() => getToken(CFloor7Parser.TOKEN_Identifier, 0);
  ParameterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameter;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterParameter(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitParameter(this);
  }
}

class ParameterListContext extends ParserRuleContext {
  List<ParameterContext> parameters() => getRuleContexts<ParameterContext>();
  ParameterContext? parameter(int i) => getRuleContext<ParameterContext>(i);
  ParameterListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_parameterList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterParameterList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitParameterList(this);
  }
}

class FunctionDefinitionContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  TerminalNode? Identifier() => getToken(CFloor7Parser.TOKEN_Identifier, 0);
  ParameterListContext? parameterList() => getRuleContext<ParameterListContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  FunctionDefinitionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionDefinition;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterFunctionDefinition(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitFunctionDefinition(this);
  }
}

class TypeContext extends ParserRuleContext {
  TerminalNode? Primitive() => getToken(CFloor7Parser.TOKEN_Primitive, 0);
  TypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_type;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitType(this);
  }
}

class ArrayLiteralElementContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor7Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor7Parser.TOKEN_StringLiteral, 0);
  TerminalNode? BooleanLiteral() => getToken(CFloor7Parser.TOKEN_BooleanLiteral, 0);
  ArrayLiteralContext? arrayLiteral() => getRuleContext<ArrayLiteralContext>(0);
  ArrayInitializerContext? arrayInitializer() => getRuleContext<ArrayInitializerContext>(0);
  ArrayLiteralElementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayLiteralElement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterArrayLiteralElement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitArrayLiteralElement(this);
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
    if (listener is CFloor7Listener) listener.enterArrayLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitArrayLiteral(this);
  }
}

class ArrayInitializerContext extends ParserRuleContext {
  TerminalNode? Primitive() => getToken(CFloor7Parser.TOKEN_Primitive, 0);
  TerminalNode? Number() => getToken(CFloor7Parser.TOKEN_Number, 0);
  ArrayInitializerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayInitializer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterArrayInitializer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitArrayInitializer(this);
  }
}

class AssignmentContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor7Parser.TOKEN_StringLiteral, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  ArrayInitializerContext? arrayInitializer() => getRuleContext<ArrayInitializerContext>(0);
  ArrayLiteralContext? arrayLiteral() => getRuleContext<ArrayLiteralContext>(0);
  AssignmentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignment;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitAssignment(this);
  }
}

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor7Parser.TOKEN_Identifier, 0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  VariableAccessorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_variableAccessor;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterVariableAccessor(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitVariableAccessor(this);
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
    if (listener is CFloor7Listener) listener.enterTypedAssignment(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitTypedAssignment(this);
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
    if (listener is CFloor7Listener) listener.enterForLoop(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitForLoop(this);
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
    if (listener is CFloor7Listener) listener.enterStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitStatement(this);
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
    if (listener is CFloor7Listener) listener.enterWhileLoop(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitWhileLoop(this);
  }
}

class BooleanOperandContext extends ParserRuleContext {
  TerminalNode? BooleanLiteral() => getToken(CFloor7Parser.TOKEN_BooleanLiteral, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  BooleanOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_booleanOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterBooleanOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitBooleanOperand(this);
  }
}

class BooleanExpressionContext extends ParserRuleContext {
  TerminalNode? UnaryBooleanOperator() => getToken(CFloor7Parser.TOKEN_UnaryBooleanOperator, 0);
  List<BooleanOperandContext> booleanOperands() => getRuleContexts<BooleanOperandContext>();
  BooleanOperandContext? booleanOperand(int i) => getRuleContext<BooleanOperandContext>(i);
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? Comparator() => getToken(CFloor7Parser.TOKEN_Comparator, 0);
  TerminalNode? BinaryBooleanOperator() => getToken(CFloor7Parser.TOKEN_BinaryBooleanOperator, 0);
  BooleanExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_booleanExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterBooleanExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitBooleanExpression(this);
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
    if (listener is CFloor7Listener) listener.enterBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitBlock(this);
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
    if (listener is CFloor7Listener) listener.enterIfStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitIfStatement(this);
  }
}

class ElseBlockContext extends ParserRuleContext {
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ElseBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseBlock;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterElseBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitElseBlock(this);
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
    if (listener is CFloor7Listener) listener.enterIfBlock(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitIfBlock(this);
  }
}

class StringLengthExpressionContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  StringLengthExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_stringLengthExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterStringLengthExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitStringLengthExpression(this);
  }
}

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor7Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext? mathFunctionExpression() => getRuleContext<MathFunctionExpressionContext>(0);
  StringLengthExpressionContext? stringLengthExpression() => getRuleContext<StringLengthExpressionContext>(0);
  MathOperandContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathOperand;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterMathOperand(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitMathOperand(this);
  }
}

class ReadFunctionExpressionContext extends ParserRuleContext {
  ReadFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_readFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterReadFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitReadFunctionExpression(this);
  }
}

class MathFunctionExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  MathFunctionExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathFunctionExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterMathFunctionExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitMathFunctionExpression(this);
  }
}

class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(CFloor7Parser.TOKEN_EOF, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  ProgramContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_program;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterProgram(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitProgram(this);
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
    if (listener is CFloor7Listener) listener.enterDeclAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitDeclAssignStatement(this);
  }
}

class AssignStatementContext extends ParserRuleContext {
  AssignmentContext? assignment() => getRuleContext<AssignmentContext>(0);
  AssignStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_assignStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterAssignStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitAssignStatement(this);
  }
}

class WriteStatementContext extends ParserRuleContext {
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  TerminalNode? Number() => getToken(CFloor7Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor7Parser.TOKEN_StringLiteral, 0);
  WriteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_writeStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterWriteStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitWriteStatement(this);
  }
}

class MathExpressionContext extends ParserRuleContext {
  List<MathOperandContext> mathOperands() => getRuleContexts<MathOperandContext>();
  MathOperandContext? mathOperand(int i) => getRuleContext<MathOperandContext>(i);
  TerminalNode? MathOperator() => getToken(CFloor7Parser.TOKEN_MathOperator, 0);
  MathExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_mathExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterMathExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitMathExpression(this);
  }
}

