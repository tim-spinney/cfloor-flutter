// Generated from grammars/CFloor7.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor7Listener.dart';
import 'CFloor7BaseListener.dart';
const int RULE_parameter = 0, RULE_parameterList = 1, RULE_functionDefinition = 2, 
          RULE_program = 3, RULE_type = 4, RULE_arrayLiteralElement = 5, 
          RULE_arrayLiteral = 6, RULE_arrayInitializer = 7, RULE_assignment = 8, 
          RULE_variableAccessor = 9, RULE_typedAssignment = 10, RULE_forLoop = 11, 
          RULE_statement = 12, RULE_whileLoop = 13, RULE_booleanOperand = 14, 
          RULE_booleanExpression = 15, RULE_block = 16, RULE_ifStatement = 17, 
          RULE_elseBlock = 18, RULE_ifBlock = 19, RULE_stringLengthExpression = 20, 
          RULE_mathOperand = 21, RULE_readFunctionExpression = 22, RULE_mathFunctionExpression = 23, 
          RULE_declAssignStatement = 24, RULE_assignStatement = 25, RULE_writeStatement = 26, 
          RULE_mathExpression = 27;
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
                   TOKEN_T__27 = 28, TOKEN_Primitive = 29, TOKEN_BinaryBooleanOperator = 30, 
                   TOKEN_UnaryBooleanOperator = 31, TOKEN_BooleanLiteral = 32, 
                   TOKEN_Comparator = 33, TOKEN_Number = 34, TOKEN_MathOperator = 35, 
                   TOKEN_StringLiteral = 36, TOKEN_WS = 37, TOKEN_Identifier = 38;

  @override
  final List<String> ruleNames = [
    'parameter', 'parameterList', 'functionDefinition', 'program', 'type', 
    'arrayLiteralElement', 'arrayLiteral', 'arrayInitializer', 'assignment', 
    'variableAccessor', 'typedAssignment', 'forLoop', 'statement', 'whileLoop', 
    'booleanOperand', 'booleanExpression', 'block', 'ifStatement', 'elseBlock', 
    'ifBlock', 'stringLengthExpression', 'mathOperand', 'readFunctionExpression', 
    'mathFunctionExpression', 'declAssignStatement', 'assignStatement', 
    'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "','", "'void'", "'('", "')'", "'array<'", "'>'", "'{'", "'}'", 
      "'['", "']'", "'='", "'for'", "';'", "'while'", "'if'", "'else'", 
      "'length('", "'read_int()'", "'read_float()'", "'read_string()'", 
      "'floor'", "'ceil'", "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", 
      "'write'", null, null, "'not'"
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
      if (_la == TOKEN_T__4 || _la == TOKEN_Primitive) {
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
      state = 71;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__4:
      case TOKEN_Primitive:
        state = 69;
        type();
        break;
      case TOKEN_T__1:
        state = 70;
        match(TOKEN_T__1);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 73;
      match(TOKEN_Identifier);
      state = 74;
      match(TOKEN_T__2);
      state = 75;
      parameterList();
      state = 76;
      match(TOKEN_T__3);
      state = 77;
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 6, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 80; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 79;
        functionDefinition();
        state = 82; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 536870948) != 0));
      state = 84;
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 8, RULE_type);
    try {
      state = 90;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 86;
        match(TOKEN_Primitive);
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 2);
        state = 87;
        match(TOKEN_T__4);
        state = 88;
        match(TOKEN_Primitive);
        state = 89;
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

  ArrayLiteralElementContext arrayLiteralElement() {
    dynamic _localctx = ArrayLiteralElementContext(context, state);
    enterRule(_localctx, 10, RULE_arrayLiteralElement);
    try {
      state = 97;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 92;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 2);
        state = 93;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 3);
        state = 94;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 4);
        state = 95;
        arrayLiteral();
        break;
      case TOKEN_T__4:
        enterOuterAlt(_localctx, 5);
        state = 96;
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
    enterRule(_localctx, 12, RULE_arrayLiteral);
    int _la;
    try {
      state = 112;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 99;
        match(TOKEN_T__6);
        state = 100;
        match(TOKEN_T__7);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 101;
        match(TOKEN_T__6);
        state = 102;
        arrayLiteralElement();
        state = 107;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__0) {
          state = 103;
          match(TOKEN_T__0);
          state = 104;
          arrayLiteralElement();
          state = 109;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 110;
        match(TOKEN_T__7);
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
    enterRule(_localctx, 14, RULE_arrayInitializer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 114;
      match(TOKEN_T__4);
      state = 115;
      match(TOKEN_Primitive);
      state = 116;
      match(TOKEN_T__5);
      state = 117;
      match(TOKEN_T__8);
      state = 118;
      match(TOKEN_Number);
      state = 119;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 16, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 121;
      variableAccessor();
      state = 122;
      match(TOKEN_T__10);
      state = 129;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 8, context)) {
      case 1:
        state = 123;
        mathExpression();
        break;
      case 2:
        state = 124;
        readFunctionExpression();
        break;
      case 3:
        state = 125;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        state = 126;
        booleanExpression();
        break;
      case 5:
        state = 127;
        arrayInitializer();
        break;
      case 6:
        state = 128;
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
    enterRule(_localctx, 18, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 131;
      match(TOKEN_Identifier);
      state = 136;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__8) {
        state = 132;
        match(TOKEN_T__8);
        state = 133;
        mathExpression();
        state = 134;
        match(TOKEN_T__9);
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
      state = 138;
      type();
      state = 139;
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
    enterRule(_localctx, 22, RULE_forLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 141;
      match(TOKEN_T__11);
      state = 142;
      match(TOKEN_T__2);
      state = 143;
      typedAssignment();
      state = 144;
      match(TOKEN_T__12);
      state = 145;
      booleanExpression();
      state = 146;
      match(TOKEN_T__12);
      state = 147;
      assignment();
      state = 148;
      match(TOKEN_T__3);
      state = 149;
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
    enterRule(_localctx, 24, RULE_statement);
    try {
      state = 157;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__27:
        enterOuterAlt(_localctx, 1);
        state = 151;
        writeStatement();
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 152;
        assignStatement();
        break;
      case TOKEN_T__4:
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 3);
        state = 153;
        declAssignStatement();
        break;
      case TOKEN_T__14:
        enterOuterAlt(_localctx, 4);
        state = 154;
        ifBlock();
        break;
      case TOKEN_T__13:
        enterOuterAlt(_localctx, 5);
        state = 155;
        whileLoop();
        break;
      case TOKEN_T__11:
        enterOuterAlt(_localctx, 6);
        state = 156;
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
    enterRule(_localctx, 26, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 159;
      match(TOKEN_T__13);
      state = 160;
      match(TOKEN_T__2);
      state = 161;
      booleanExpression();
      state = 162;
      match(TOKEN_T__3);
      state = 163;
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
    enterRule(_localctx, 28, RULE_booleanOperand);
    try {
      state = 171;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 165;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 166;
        variableAccessor();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 167;
        match(TOKEN_T__2);
        state = 168;
        booleanExpression();
        state = 169;
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
    enterRule(_localctx, 30, RULE_booleanExpression);
    int _la;
    try {
      state = 184;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 173;
        match(TOKEN_UnaryBooleanOperator);
        state = 174;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 175;
        mathOperand();
        state = 176;
        match(TOKEN_Comparator);
        state = 177;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 179;
        booleanOperand();
        state = 182;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 180;
          match(TOKEN_BinaryBooleanOperator);
          state = 181;
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
    enterRule(_localctx, 32, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 186;
      match(TOKEN_T__6);
      state = 188; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 187;
        statement();
        state = 190; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 275683266592) != 0));
      state = 192;
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

  IfStatementContext ifStatement() {
    dynamic _localctx = IfStatementContext(context, state);
    enterRule(_localctx, 34, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 194;
      match(TOKEN_T__14);
      state = 195;
      match(TOKEN_T__2);
      state = 196;
      booleanExpression();
      state = 197;
      match(TOKEN_T__3);
      state = 198;
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
    enterRule(_localctx, 36, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 200;
      match(TOKEN_T__15);
      state = 201;
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
    enterRule(_localctx, 38, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 203;
      ifStatement();
      state = 208;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 204;
          match(TOKEN_T__15);
          state = 205;
          ifStatement(); 
        }
        state = 210;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 15, context);
      }
      state = 212;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__15) {
        state = 211;
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
    enterRule(_localctx, 40, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 214;
      match(TOKEN_T__16);
      state = 215;
      variableAccessor();
      state = 216;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 42, RULE_mathOperand);
    try {
      state = 226;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 218;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 219;
        variableAccessor();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 220;
        match(TOKEN_T__2);
        state = 221;
        mathExpression();
        state = 222;
        match(TOKEN_T__3);
        break;
      case TOKEN_T__20:
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
      case TOKEN_T__26:
        enterOuterAlt(_localctx, 4);
        state = 224;
        mathFunctionExpression();
        break;
      case TOKEN_T__16:
        enterOuterAlt(_localctx, 5);
        state = 225;
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
    enterRule(_localctx, 44, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 228;
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
    enterRule(_localctx, 46, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 230;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 266338304) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 231;
      match(TOKEN_T__2);
      state = 232;
      mathExpression();
      state = 233;
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 48, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 235;
      type();
      state = 236;
      assignment();
      state = 237;
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

  AssignStatementContext assignStatement() {
    dynamic _localctx = AssignStatementContext(context, state);
    enterRule(_localctx, 50, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 239;
      assignment();
      state = 240;
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

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 52, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 242;
      match(TOKEN_T__27);
      state = 243;
      match(TOKEN_T__2);
      state = 247;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 244;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 245;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 246;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 249;
      match(TOKEN_T__3);
      state = 250;
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 54, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 252;
      mathOperand();
      state = 255;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 253;
        match(TOKEN_MathOperator);
        state = 254;
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
      4,1,38,258,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,1,0,1,0,1,0,1,1,1,1,1,1,5,1,63,8,1,10,1,12,1,66,9,1,3,1,68,8,1,
      1,2,1,2,3,2,72,8,2,1,2,1,2,1,2,1,2,1,2,1,2,1,3,4,3,81,8,3,11,3,12,
      3,82,1,3,1,3,1,4,1,4,1,4,1,4,3,4,91,8,4,1,5,1,5,1,5,1,5,1,5,3,5,98,
      8,5,1,6,1,6,1,6,1,6,1,6,1,6,5,6,106,8,6,10,6,12,6,109,9,6,1,6,1,6,
      3,6,113,8,6,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,1,8,1,
      8,1,8,3,8,130,8,8,1,9,1,9,1,9,1,9,1,9,3,9,137,8,9,1,10,1,10,1,10,1,
      11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,12,1,12,1,12,1,12,
      1,12,1,12,3,12,158,8,12,1,13,1,13,1,13,1,13,1,13,1,13,1,14,1,14,1,
      14,1,14,1,14,1,14,3,14,172,8,14,1,15,1,15,1,15,1,15,1,15,1,15,1,15,
      1,15,1,15,3,15,183,8,15,3,15,185,8,15,1,16,1,16,4,16,189,8,16,11,16,
      12,16,190,1,16,1,16,1,17,1,17,1,17,1,17,1,17,1,17,1,18,1,18,1,18,1,
      19,1,19,1,19,5,19,207,8,19,10,19,12,19,210,9,19,1,19,3,19,213,8,19,
      1,20,1,20,1,20,1,20,1,21,1,21,1,21,1,21,1,21,1,21,1,21,1,21,3,21,227,
      8,21,1,22,1,22,1,23,1,23,1,23,1,23,1,23,1,24,1,24,1,24,1,24,1,25,1,
      25,1,25,1,26,1,26,1,26,1,26,1,26,3,26,248,8,26,1,26,1,26,1,26,1,27,
      1,27,1,27,3,27,256,8,27,1,27,0,0,28,0,2,4,6,8,10,12,14,16,18,20,22,
      24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,0,2,1,0,18,20,1,0,
      21,27,266,0,56,1,0,0,0,2,67,1,0,0,0,4,71,1,0,0,0,6,80,1,0,0,0,8,90,
      1,0,0,0,10,97,1,0,0,0,12,112,1,0,0,0,14,114,1,0,0,0,16,121,1,0,0,0,
      18,131,1,0,0,0,20,138,1,0,0,0,22,141,1,0,0,0,24,157,1,0,0,0,26,159,
      1,0,0,0,28,171,1,0,0,0,30,184,1,0,0,0,32,186,1,0,0,0,34,194,1,0,0,
      0,36,200,1,0,0,0,38,203,1,0,0,0,40,214,1,0,0,0,42,226,1,0,0,0,44,228,
      1,0,0,0,46,230,1,0,0,0,48,235,1,0,0,0,50,239,1,0,0,0,52,242,1,0,0,
      0,54,252,1,0,0,0,56,57,3,8,4,0,57,58,5,38,0,0,58,1,1,0,0,0,59,64,3,
      0,0,0,60,61,5,1,0,0,61,63,3,0,0,0,62,60,1,0,0,0,63,66,1,0,0,0,64,62,
      1,0,0,0,64,65,1,0,0,0,65,68,1,0,0,0,66,64,1,0,0,0,67,59,1,0,0,0,67,
      68,1,0,0,0,68,3,1,0,0,0,69,72,3,8,4,0,70,72,5,2,0,0,71,69,1,0,0,0,
      71,70,1,0,0,0,72,73,1,0,0,0,73,74,5,38,0,0,74,75,5,3,0,0,75,76,3,2,
      1,0,76,77,5,4,0,0,77,78,3,32,16,0,78,5,1,0,0,0,79,81,3,4,2,0,80,79,
      1,0,0,0,81,82,1,0,0,0,82,80,1,0,0,0,82,83,1,0,0,0,83,84,1,0,0,0,84,
      85,5,0,0,1,85,7,1,0,0,0,86,91,5,29,0,0,87,88,5,5,0,0,88,89,5,29,0,
      0,89,91,5,6,0,0,90,86,1,0,0,0,90,87,1,0,0,0,91,9,1,0,0,0,92,98,5,34,
      0,0,93,98,5,36,0,0,94,98,5,32,0,0,95,98,3,12,6,0,96,98,3,14,7,0,97,
      92,1,0,0,0,97,93,1,0,0,0,97,94,1,0,0,0,97,95,1,0,0,0,97,96,1,0,0,0,
      98,11,1,0,0,0,99,100,5,7,0,0,100,113,5,8,0,0,101,102,5,7,0,0,102,107,
      3,10,5,0,103,104,5,1,0,0,104,106,3,10,5,0,105,103,1,0,0,0,106,109,
      1,0,0,0,107,105,1,0,0,0,107,108,1,0,0,0,108,110,1,0,0,0,109,107,1,
      0,0,0,110,111,5,8,0,0,111,113,1,0,0,0,112,99,1,0,0,0,112,101,1,0,0,
      0,113,13,1,0,0,0,114,115,5,5,0,0,115,116,5,29,0,0,116,117,5,6,0,0,
      117,118,5,9,0,0,118,119,5,34,0,0,119,120,5,10,0,0,120,15,1,0,0,0,121,
      122,3,18,9,0,122,129,5,11,0,0,123,130,3,54,27,0,124,130,3,44,22,0,
      125,130,5,36,0,0,126,130,3,30,15,0,127,130,3,14,7,0,128,130,3,12,6,
      0,129,123,1,0,0,0,129,124,1,0,0,0,129,125,1,0,0,0,129,126,1,0,0,0,
      129,127,1,0,0,0,129,128,1,0,0,0,130,17,1,0,0,0,131,136,5,38,0,0,132,
      133,5,9,0,0,133,134,3,54,27,0,134,135,5,10,0,0,135,137,1,0,0,0,136,
      132,1,0,0,0,136,137,1,0,0,0,137,19,1,0,0,0,138,139,3,8,4,0,139,140,
      3,16,8,0,140,21,1,0,0,0,141,142,5,12,0,0,142,143,5,3,0,0,143,144,3,
      20,10,0,144,145,5,13,0,0,145,146,3,30,15,0,146,147,5,13,0,0,147,148,
      3,16,8,0,148,149,5,4,0,0,149,150,3,32,16,0,150,23,1,0,0,0,151,158,
      3,52,26,0,152,158,3,50,25,0,153,158,3,48,24,0,154,158,3,38,19,0,155,
      158,3,26,13,0,156,158,3,22,11,0,157,151,1,0,0,0,157,152,1,0,0,0,157,
      153,1,0,0,0,157,154,1,0,0,0,157,155,1,0,0,0,157,156,1,0,0,0,158,25,
      1,0,0,0,159,160,5,14,0,0,160,161,5,3,0,0,161,162,3,30,15,0,162,163,
      5,4,0,0,163,164,3,32,16,0,164,27,1,0,0,0,165,172,5,32,0,0,166,172,
      3,18,9,0,167,168,5,3,0,0,168,169,3,30,15,0,169,170,5,4,0,0,170,172,
      1,0,0,0,171,165,1,0,0,0,171,166,1,0,0,0,171,167,1,0,0,0,172,29,1,0,
      0,0,173,174,5,31,0,0,174,185,3,28,14,0,175,176,3,42,21,0,176,177,5,
      33,0,0,177,178,3,42,21,0,178,185,1,0,0,0,179,182,3,28,14,0,180,181,
      5,30,0,0,181,183,3,28,14,0,182,180,1,0,0,0,182,183,1,0,0,0,183,185,
      1,0,0,0,184,173,1,0,0,0,184,175,1,0,0,0,184,179,1,0,0,0,185,31,1,0,
      0,0,186,188,5,7,0,0,187,189,3,24,12,0,188,187,1,0,0,0,189,190,1,0,
      0,0,190,188,1,0,0,0,190,191,1,0,0,0,191,192,1,0,0,0,192,193,5,8,0,
      0,193,33,1,0,0,0,194,195,5,15,0,0,195,196,5,3,0,0,196,197,3,30,15,
      0,197,198,5,4,0,0,198,199,3,32,16,0,199,35,1,0,0,0,200,201,5,16,0,
      0,201,202,3,32,16,0,202,37,1,0,0,0,203,208,3,34,17,0,204,205,5,16,
      0,0,205,207,3,34,17,0,206,204,1,0,0,0,207,210,1,0,0,0,208,206,1,0,
      0,0,208,209,1,0,0,0,209,212,1,0,0,0,210,208,1,0,0,0,211,213,3,36,18,
      0,212,211,1,0,0,0,212,213,1,0,0,0,213,39,1,0,0,0,214,215,5,17,0,0,
      215,216,3,18,9,0,216,217,5,4,0,0,217,41,1,0,0,0,218,227,5,34,0,0,219,
      227,3,18,9,0,220,221,5,3,0,0,221,222,3,54,27,0,222,223,5,4,0,0,223,
      227,1,0,0,0,224,227,3,46,23,0,225,227,3,40,20,0,226,218,1,0,0,0,226,
      219,1,0,0,0,226,220,1,0,0,0,226,224,1,0,0,0,226,225,1,0,0,0,227,43,
      1,0,0,0,228,229,7,0,0,0,229,45,1,0,0,0,230,231,7,1,0,0,231,232,5,3,
      0,0,232,233,3,54,27,0,233,234,5,4,0,0,234,47,1,0,0,0,235,236,3,8,4,
      0,236,237,3,16,8,0,237,238,5,13,0,0,238,49,1,0,0,0,239,240,3,16,8,
      0,240,241,5,13,0,0,241,51,1,0,0,0,242,243,5,28,0,0,243,247,5,3,0,0,
      244,248,3,18,9,0,245,248,5,34,0,0,246,248,5,36,0,0,247,244,1,0,0,0,
      247,245,1,0,0,0,247,246,1,0,0,0,248,249,1,0,0,0,249,250,5,4,0,0,250,
      251,5,13,0,0,251,53,1,0,0,0,252,255,3,42,21,0,253,254,5,35,0,0,254,
      256,3,42,21,0,255,253,1,0,0,0,255,256,1,0,0,0,256,55,1,0,0,0,20,64,
      67,71,82,90,97,107,112,129,136,157,171,182,184,190,208,212,226,247,
      255
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
  TerminalNode? Identifier() => getToken(CFloor7Parser.TOKEN_Identifier, 0);
  ParameterListContext? parameterList() => getRuleContext<ParameterListContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TypeContext? type() => getRuleContext<TypeContext>(0);
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

class ProgramContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(CFloor7Parser.TOKEN_EOF, 0);
  List<FunctionDefinitionContext> functionDefinitions() => getRuleContexts<FunctionDefinitionContext>();
  FunctionDefinitionContext? functionDefinition(int i) => getRuleContext<FunctionDefinitionContext>(i);
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

