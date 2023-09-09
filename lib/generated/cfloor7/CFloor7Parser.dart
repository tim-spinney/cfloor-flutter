// Generated from grammars/CFloor7.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor7Listener.dart';
import 'CFloor7BaseListener.dart';
const int RULE_parameter = 0, RULE_parameterList = 1, RULE_returnType = 2, 
          RULE_functionDefinition = 3, RULE_expression = 4, RULE_functionInvocation = 5, 
          RULE_functionInvocationStatement = 6, RULE_returnStatement = 7, 
          RULE_statement = 8, RULE_program = 9, RULE_type = 10, RULE_arrayLiteralElement = 11, 
          RULE_arrayLiteral = 12, RULE_arrayInitializer = 13, RULE_assignment = 14, 
          RULE_variableAccessor = 15, RULE_typedAssignment = 16, RULE_forLoop = 17, 
          RULE_whileLoop = 18, RULE_booleanOperand = 19, RULE_booleanExpression = 20, 
          RULE_block = 21, RULE_ifStatement = 22, RULE_elseBlock = 23, RULE_ifBlock = 24, 
          RULE_stringLengthExpression = 25, RULE_mathOperand = 26, RULE_readFunctionExpression = 27, 
          RULE_mathFunctionExpression = 28, RULE_declAssignStatement = 29, 
          RULE_assignStatement = 30, RULE_writeStatement = 31, RULE_mathExpression = 32;
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
                   TOKEN_T__27 = 28, TOKEN_T__28 = 29, TOKEN_Primitive = 30, 
                   TOKEN_BinaryBooleanOperator = 31, TOKEN_UnaryBooleanOperator = 32, 
                   TOKEN_BooleanLiteral = 33, TOKEN_Comparator = 34, TOKEN_Number = 35, 
                   TOKEN_MathOperator = 36, TOKEN_StringLiteral = 37, TOKEN_WS = 38, 
                   TOKEN_Identifier = 39;

  @override
  final List<String> ruleNames = [
    'parameter', 'parameterList', 'returnType', 'functionDefinition', 'expression', 
    'functionInvocation', 'functionInvocationStatement', 'returnStatement', 
    'statement', 'program', 'type', 'arrayLiteralElement', 'arrayLiteral', 
    'arrayInitializer', 'assignment', 'variableAccessor', 'typedAssignment', 
    'forLoop', 'whileLoop', 'booleanOperand', 'booleanExpression', 'block', 
    'ifStatement', 'elseBlock', 'ifBlock', 'stringLengthExpression', 'mathOperand', 
    'readFunctionExpression', 'mathFunctionExpression', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "','", "'void'", "'('", "')'", "';'", "'return'", "'array<'", 
      "'>'", "'{'", "'}'", "'['", "']'", "'='", "'for'", "'while'", "'if'", 
      "'else'", "'length('", "'read_int()'", "'read_float()'", "'read_string()'", 
      "'floor'", "'ceil'", "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", 
      "'write'", null, null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, "Primitive", "BinaryBooleanOperator", 
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
      state = 66;
      type();
      state = 67;
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
      state = 77;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__6 || _la == TOKEN_Primitive) {
        state = 69;
        parameter();
        state = 74;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__0) {
          state = 70;
          match(TOKEN_T__0);
          state = 71;
          parameter();
          state = 76;
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

  ReturnTypeContext returnType() {
    dynamic _localctx = ReturnTypeContext(context, state);
    enterRule(_localctx, 4, RULE_returnType);
    try {
      state = 81;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__6:
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 79;
        type();
        break;
      case TOKEN_T__1:
        enterOuterAlt(_localctx, 2);
        state = 80;
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

  FunctionDefinitionContext functionDefinition() {
    dynamic _localctx = FunctionDefinitionContext(context, state);
    enterRule(_localctx, 6, RULE_functionDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 83;
      returnType();
      state = 84;
      match(TOKEN_Identifier);
      state = 85;
      match(TOKEN_T__2);
      state = 86;
      parameterList();
      state = 87;
      match(TOKEN_T__3);
      state = 88;
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

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 8, RULE_expression);
    try {
      state = 97;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 3, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 90;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 91;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 92;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 93;
        booleanExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 94;
        arrayInitializer();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 95;
        arrayLiteral();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 96;
        functionInvocation();
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

  FunctionInvocationContext functionInvocation() {
    dynamic _localctx = FunctionInvocationContext(context, state);
    enterRule(_localctx, 10, RULE_functionInvocation);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 99;
      match(TOKEN_Identifier);
      state = 100;
      match(TOKEN_T__2);
      state = 109;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_Identifier) {
        state = 101;
        variableAccessor();
        state = 106;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__0) {
          state = 102;
          match(TOKEN_T__0);
          state = 103;
          variableAccessor();
          state = 108;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
      }

      state = 111;
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

  FunctionInvocationStatementContext functionInvocationStatement() {
    dynamic _localctx = FunctionInvocationStatementContext(context, state);
    enterRule(_localctx, 12, RULE_functionInvocationStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 113;
      functionInvocation();
      state = 114;
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

  ReturnStatementContext returnStatement() {
    dynamic _localctx = ReturnStatementContext(context, state);
    enterRule(_localctx, 14, RULE_returnStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 116;
      match(TOKEN_T__5);
      state = 118;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 734976017032) != 0)) {
        state = 117;
        expression();
      }

      state = 120;
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

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 16, RULE_statement);
    try {
      state = 130;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 122;
        writeStatement();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 123;
        assignStatement();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 124;
        declAssignStatement();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 125;
        ifBlock();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 126;
        whileLoop();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 127;
        forLoop();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 128;
        functionInvocationStatement();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 129;
        returnStatement();
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 18, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 133; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 132;
        functionDefinition();
        state = 135; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1073741956) != 0));
      state = 137;
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
    enterRule(_localctx, 20, RULE_type);
    try {
      state = 143;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 139;
        match(TOKEN_Primitive);
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 2);
        state = 140;
        match(TOKEN_T__6);
        state = 141;
        match(TOKEN_Primitive);
        state = 142;
        match(TOKEN_T__7);
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
    enterRule(_localctx, 22, RULE_arrayLiteralElement);
    try {
      state = 150;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 145;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 2);
        state = 146;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 3);
        state = 147;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__8:
        enterOuterAlt(_localctx, 4);
        state = 148;
        arrayLiteral();
        break;
      case TOKEN_T__6:
        enterOuterAlt(_localctx, 5);
        state = 149;
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
    enterRule(_localctx, 24, RULE_arrayLiteral);
    int _la;
    try {
      state = 165;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 12, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 152;
        match(TOKEN_T__8);
        state = 153;
        match(TOKEN_T__9);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 154;
        match(TOKEN_T__8);
        state = 155;
        arrayLiteralElement();
        state = 160;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__0) {
          state = 156;
          match(TOKEN_T__0);
          state = 157;
          arrayLiteralElement();
          state = 162;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 163;
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

  ArrayInitializerContext arrayInitializer() {
    dynamic _localctx = ArrayInitializerContext(context, state);
    enterRule(_localctx, 26, RULE_arrayInitializer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 167;
      match(TOKEN_T__6);
      state = 168;
      match(TOKEN_Primitive);
      state = 169;
      match(TOKEN_T__7);
      state = 170;
      match(TOKEN_T__10);
      state = 171;
      match(TOKEN_Number);
      state = 172;
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

  AssignmentContext assignment() {
    dynamic _localctx = AssignmentContext(context, state);
    enterRule(_localctx, 28, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 174;
      variableAccessor();
      state = 175;
      match(TOKEN_T__12);
      state = 176;
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
    enterRule(_localctx, 30, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 178;
      match(TOKEN_Identifier);
      state = 183;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__10) {
        state = 179;
        match(TOKEN_T__10);
        state = 180;
        mathExpression();
        state = 181;
        match(TOKEN_T__11);
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
    enterRule(_localctx, 32, RULE_typedAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 185;
      type();
      state = 186;
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
    enterRule(_localctx, 34, RULE_forLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 188;
      match(TOKEN_T__13);
      state = 189;
      match(TOKEN_T__2);
      state = 190;
      typedAssignment();
      state = 191;
      match(TOKEN_T__4);
      state = 192;
      booleanExpression();
      state = 193;
      match(TOKEN_T__4);
      state = 194;
      assignment();
      state = 195;
      match(TOKEN_T__3);
      state = 196;
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

  WhileLoopContext whileLoop() {
    dynamic _localctx = WhileLoopContext(context, state);
    enterRule(_localctx, 36, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 198;
      match(TOKEN_T__14);
      state = 199;
      match(TOKEN_T__2);
      state = 200;
      booleanExpression();
      state = 201;
      match(TOKEN_T__3);
      state = 202;
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
    enterRule(_localctx, 38, RULE_booleanOperand);
    try {
      state = 210;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 1);
        state = 204;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 205;
        variableAccessor();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 206;
        match(TOKEN_T__2);
        state = 207;
        booleanExpression();
        state = 208;
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
    enterRule(_localctx, 40, RULE_booleanExpression);
    int _la;
    try {
      state = 223;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 16, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 212;
        match(TOKEN_UnaryBooleanOperator);
        state = 213;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 214;
        mathOperand();
        state = 215;
        match(TOKEN_Comparator);
        state = 216;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 218;
        booleanOperand();
        state = 221;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 219;
          match(TOKEN_BinaryBooleanOperator);
          state = 220;
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
    enterRule(_localctx, 42, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 225;
      match(TOKEN_T__8);
      state = 227; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 226;
        statement();
        state = 229; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 551366541504) != 0));
      state = 231;
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
    enterRule(_localctx, 44, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 233;
      match(TOKEN_T__15);
      state = 234;
      match(TOKEN_T__2);
      state = 235;
      booleanExpression();
      state = 236;
      match(TOKEN_T__3);
      state = 237;
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
    enterRule(_localctx, 46, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 239;
      match(TOKEN_T__16);
      state = 240;
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
    enterRule(_localctx, 48, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 242;
      ifStatement();
      state = 247;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 243;
          match(TOKEN_T__16);
          state = 244;
          ifStatement(); 
        }
        state = 249;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
      }
      state = 251;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__16) {
        state = 250;
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
    enterRule(_localctx, 50, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 253;
      match(TOKEN_T__17);
      state = 254;
      variableAccessor();
      state = 255;
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
    enterRule(_localctx, 52, RULE_mathOperand);
    try {
      state = 265;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 257;
        match(TOKEN_Number);
        break;
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 258;
        variableAccessor();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 3);
        state = 259;
        match(TOKEN_T__2);
        state = 260;
        mathExpression();
        state = 261;
        match(TOKEN_T__3);
        break;
      case TOKEN_T__21:
      case TOKEN_T__22:
      case TOKEN_T__23:
      case TOKEN_T__24:
      case TOKEN_T__25:
      case TOKEN_T__26:
      case TOKEN_T__27:
        enterOuterAlt(_localctx, 4);
        state = 263;
        mathFunctionExpression();
        break;
      case TOKEN_T__17:
        enterOuterAlt(_localctx, 5);
        state = 264;
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
    enterRule(_localctx, 54, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 267;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3670016) != 0))) {
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
    enterRule(_localctx, 56, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 269;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 532676608) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 270;
      match(TOKEN_T__2);
      state = 271;
      mathExpression();
      state = 272;
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
    enterRule(_localctx, 58, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 274;
      type();
      state = 275;
      assignment();
      state = 276;
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

  AssignStatementContext assignStatement() {
    dynamic _localctx = AssignStatementContext(context, state);
    enterRule(_localctx, 60, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 278;
      assignment();
      state = 279;
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

  WriteStatementContext writeStatement() {
    dynamic _localctx = WriteStatementContext(context, state);
    enterRule(_localctx, 62, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 281;
      match(TOKEN_T__28);
      state = 282;
      match(TOKEN_T__2);
      state = 286;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 283;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 284;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 285;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 288;
      match(TOKEN_T__3);
      state = 289;
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

  MathExpressionContext mathExpression() {
    dynamic _localctx = MathExpressionContext(context, state);
    enterRule(_localctx, 64, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 291;
      mathOperand();
      state = 294;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 292;
        match(TOKEN_MathOperator);
        state = 293;
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
      4,1,39,297,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,1,0,1,0,1,0,1,
      1,1,1,1,1,5,1,73,8,1,10,1,12,1,76,9,1,3,1,78,8,1,1,2,1,2,3,2,82,8,
      2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,3,4,98,8,
      4,1,5,1,5,1,5,1,5,1,5,5,5,105,8,5,10,5,12,5,108,9,5,3,5,110,8,5,1,
      5,1,5,1,6,1,6,1,6,1,7,1,7,3,7,119,8,7,1,7,1,7,1,8,1,8,1,8,1,8,1,8,
      1,8,1,8,1,8,3,8,131,8,8,1,9,4,9,134,8,9,11,9,12,9,135,1,9,1,9,1,10,
      1,10,1,10,1,10,3,10,144,8,10,1,11,1,11,1,11,1,11,1,11,3,11,151,8,11,
      1,12,1,12,1,12,1,12,1,12,1,12,5,12,159,8,12,10,12,12,12,162,9,12,1,
      12,1,12,3,12,166,8,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,14,1,14,
      1,14,1,14,1,15,1,15,1,15,1,15,1,15,3,15,184,8,15,1,16,1,16,1,16,1,
      17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,18,1,18,1,18,1,18,
      1,18,1,18,1,19,1,19,1,19,1,19,1,19,1,19,3,19,211,8,19,1,20,1,20,1,
      20,1,20,1,20,1,20,1,20,1,20,1,20,3,20,222,8,20,3,20,224,8,20,1,21,
      1,21,4,21,228,8,21,11,21,12,21,229,1,21,1,21,1,22,1,22,1,22,1,22,1,
      22,1,22,1,23,1,23,1,23,1,24,1,24,1,24,5,24,246,8,24,10,24,12,24,249,
      9,24,1,24,3,24,252,8,24,1,25,1,25,1,25,1,25,1,26,1,26,1,26,1,26,1,
      26,1,26,1,26,1,26,3,26,266,8,26,1,27,1,27,1,28,1,28,1,28,1,28,1,28,
      1,29,1,29,1,29,1,29,1,30,1,30,1,30,1,31,1,31,1,31,1,31,1,31,3,31,287,
      8,31,1,31,1,31,1,31,1,32,1,32,1,32,3,32,295,8,32,1,32,0,0,33,0,2,4,
      6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,
      52,54,56,58,60,62,64,0,2,1,0,19,21,1,0,22,28,306,0,66,1,0,0,0,2,77,
      1,0,0,0,4,81,1,0,0,0,6,83,1,0,0,0,8,97,1,0,0,0,10,99,1,0,0,0,12,113,
      1,0,0,0,14,116,1,0,0,0,16,130,1,0,0,0,18,133,1,0,0,0,20,143,1,0,0,
      0,22,150,1,0,0,0,24,165,1,0,0,0,26,167,1,0,0,0,28,174,1,0,0,0,30,178,
      1,0,0,0,32,185,1,0,0,0,34,188,1,0,0,0,36,198,1,0,0,0,38,210,1,0,0,
      0,40,223,1,0,0,0,42,225,1,0,0,0,44,233,1,0,0,0,46,239,1,0,0,0,48,242,
      1,0,0,0,50,253,1,0,0,0,52,265,1,0,0,0,54,267,1,0,0,0,56,269,1,0,0,
      0,58,274,1,0,0,0,60,278,1,0,0,0,62,281,1,0,0,0,64,291,1,0,0,0,66,67,
      3,20,10,0,67,68,5,39,0,0,68,1,1,0,0,0,69,74,3,0,0,0,70,71,5,1,0,0,
      71,73,3,0,0,0,72,70,1,0,0,0,73,76,1,0,0,0,74,72,1,0,0,0,74,75,1,0,
      0,0,75,78,1,0,0,0,76,74,1,0,0,0,77,69,1,0,0,0,77,78,1,0,0,0,78,3,1,
      0,0,0,79,82,3,20,10,0,80,82,5,2,0,0,81,79,1,0,0,0,81,80,1,0,0,0,82,
      5,1,0,0,0,83,84,3,4,2,0,84,85,5,39,0,0,85,86,5,3,0,0,86,87,3,2,1,0,
      87,88,5,4,0,0,88,89,3,42,21,0,89,7,1,0,0,0,90,98,3,64,32,0,91,98,3,
      54,27,0,92,98,5,37,0,0,93,98,3,40,20,0,94,98,3,26,13,0,95,98,3,24,
      12,0,96,98,3,10,5,0,97,90,1,0,0,0,97,91,1,0,0,0,97,92,1,0,0,0,97,93,
      1,0,0,0,97,94,1,0,0,0,97,95,1,0,0,0,97,96,1,0,0,0,98,9,1,0,0,0,99,
      100,5,39,0,0,100,109,5,3,0,0,101,106,3,30,15,0,102,103,5,1,0,0,103,
      105,3,30,15,0,104,102,1,0,0,0,105,108,1,0,0,0,106,104,1,0,0,0,106,
      107,1,0,0,0,107,110,1,0,0,0,108,106,1,0,0,0,109,101,1,0,0,0,109,110,
      1,0,0,0,110,111,1,0,0,0,111,112,5,4,0,0,112,11,1,0,0,0,113,114,3,10,
      5,0,114,115,5,5,0,0,115,13,1,0,0,0,116,118,5,6,0,0,117,119,3,8,4,0,
      118,117,1,0,0,0,118,119,1,0,0,0,119,120,1,0,0,0,120,121,5,5,0,0,121,
      15,1,0,0,0,122,131,3,62,31,0,123,131,3,60,30,0,124,131,3,58,29,0,125,
      131,3,48,24,0,126,131,3,36,18,0,127,131,3,34,17,0,128,131,3,12,6,0,
      129,131,3,14,7,0,130,122,1,0,0,0,130,123,1,0,0,0,130,124,1,0,0,0,130,
      125,1,0,0,0,130,126,1,0,0,0,130,127,1,0,0,0,130,128,1,0,0,0,130,129,
      1,0,0,0,131,17,1,0,0,0,132,134,3,6,3,0,133,132,1,0,0,0,134,135,1,0,
      0,0,135,133,1,0,0,0,135,136,1,0,0,0,136,137,1,0,0,0,137,138,5,0,0,
      1,138,19,1,0,0,0,139,144,5,30,0,0,140,141,5,7,0,0,141,142,5,30,0,0,
      142,144,5,8,0,0,143,139,1,0,0,0,143,140,1,0,0,0,144,21,1,0,0,0,145,
      151,5,35,0,0,146,151,5,37,0,0,147,151,5,33,0,0,148,151,3,24,12,0,149,
      151,3,26,13,0,150,145,1,0,0,0,150,146,1,0,0,0,150,147,1,0,0,0,150,
      148,1,0,0,0,150,149,1,0,0,0,151,23,1,0,0,0,152,153,5,9,0,0,153,166,
      5,10,0,0,154,155,5,9,0,0,155,160,3,22,11,0,156,157,5,1,0,0,157,159,
      3,22,11,0,158,156,1,0,0,0,159,162,1,0,0,0,160,158,1,0,0,0,160,161,
      1,0,0,0,161,163,1,0,0,0,162,160,1,0,0,0,163,164,5,10,0,0,164,166,1,
      0,0,0,165,152,1,0,0,0,165,154,1,0,0,0,166,25,1,0,0,0,167,168,5,7,0,
      0,168,169,5,30,0,0,169,170,5,8,0,0,170,171,5,11,0,0,171,172,5,35,0,
      0,172,173,5,12,0,0,173,27,1,0,0,0,174,175,3,30,15,0,175,176,5,13,0,
      0,176,177,3,8,4,0,177,29,1,0,0,0,178,183,5,39,0,0,179,180,5,11,0,0,
      180,181,3,64,32,0,181,182,5,12,0,0,182,184,1,0,0,0,183,179,1,0,0,0,
      183,184,1,0,0,0,184,31,1,0,0,0,185,186,3,20,10,0,186,187,3,28,14,0,
      187,33,1,0,0,0,188,189,5,14,0,0,189,190,5,3,0,0,190,191,3,32,16,0,
      191,192,5,5,0,0,192,193,3,40,20,0,193,194,5,5,0,0,194,195,3,28,14,
      0,195,196,5,4,0,0,196,197,3,42,21,0,197,35,1,0,0,0,198,199,5,15,0,
      0,199,200,5,3,0,0,200,201,3,40,20,0,201,202,5,4,0,0,202,203,3,42,21,
      0,203,37,1,0,0,0,204,211,5,33,0,0,205,211,3,30,15,0,206,207,5,3,0,
      0,207,208,3,40,20,0,208,209,5,4,0,0,209,211,1,0,0,0,210,204,1,0,0,
      0,210,205,1,0,0,0,210,206,1,0,0,0,211,39,1,0,0,0,212,213,5,32,0,0,
      213,224,3,38,19,0,214,215,3,52,26,0,215,216,5,34,0,0,216,217,3,52,
      26,0,217,224,1,0,0,0,218,221,3,38,19,0,219,220,5,31,0,0,220,222,3,
      38,19,0,221,219,1,0,0,0,221,222,1,0,0,0,222,224,1,0,0,0,223,212,1,
      0,0,0,223,214,1,0,0,0,223,218,1,0,0,0,224,41,1,0,0,0,225,227,5,9,0,
      0,226,228,3,16,8,0,227,226,1,0,0,0,228,229,1,0,0,0,229,227,1,0,0,0,
      229,230,1,0,0,0,230,231,1,0,0,0,231,232,5,10,0,0,232,43,1,0,0,0,233,
      234,5,16,0,0,234,235,5,3,0,0,235,236,3,40,20,0,236,237,5,4,0,0,237,
      238,3,42,21,0,238,45,1,0,0,0,239,240,5,17,0,0,240,241,3,42,21,0,241,
      47,1,0,0,0,242,247,3,44,22,0,243,244,5,17,0,0,244,246,3,44,22,0,245,
      243,1,0,0,0,246,249,1,0,0,0,247,245,1,0,0,0,247,248,1,0,0,0,248,251,
      1,0,0,0,249,247,1,0,0,0,250,252,3,46,23,0,251,250,1,0,0,0,251,252,
      1,0,0,0,252,49,1,0,0,0,253,254,5,18,0,0,254,255,3,30,15,0,255,256,
      5,4,0,0,256,51,1,0,0,0,257,266,5,35,0,0,258,266,3,30,15,0,259,260,
      5,3,0,0,260,261,3,64,32,0,261,262,5,4,0,0,262,266,1,0,0,0,263,266,
      3,56,28,0,264,266,3,50,25,0,265,257,1,0,0,0,265,258,1,0,0,0,265,259,
      1,0,0,0,265,263,1,0,0,0,265,264,1,0,0,0,266,53,1,0,0,0,267,268,7,0,
      0,0,268,55,1,0,0,0,269,270,7,1,0,0,270,271,5,3,0,0,271,272,3,64,32,
      0,272,273,5,4,0,0,273,57,1,0,0,0,274,275,3,20,10,0,275,276,3,28,14,
      0,276,277,5,5,0,0,277,59,1,0,0,0,278,279,3,28,14,0,279,280,5,5,0,0,
      280,61,1,0,0,0,281,282,5,29,0,0,282,286,5,3,0,0,283,287,3,30,15,0,
      284,287,5,35,0,0,285,287,5,37,0,0,286,283,1,0,0,0,286,284,1,0,0,0,
      286,285,1,0,0,0,287,288,1,0,0,0,288,289,5,4,0,0,289,290,5,5,0,0,290,
      63,1,0,0,0,291,294,3,52,26,0,292,293,5,36,0,0,293,295,3,52,26,0,294,
      292,1,0,0,0,294,295,1,0,0,0,295,65,1,0,0,0,23,74,77,81,97,106,109,
      118,130,135,143,150,160,165,183,210,221,223,229,247,251,265,286,294
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

class ReturnTypeContext extends ParserRuleContext {
  TypeContext? type() => getRuleContext<TypeContext>(0);
  ReturnTypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_returnType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterReturnType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitReturnType(this);
  }
}

class FunctionDefinitionContext extends ParserRuleContext {
  ReturnTypeContext? returnType() => getRuleContext<ReturnTypeContext>(0);
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

class ExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ReadFunctionExpressionContext? readFunctionExpression() => getRuleContext<ReadFunctionExpressionContext>(0);
  TerminalNode? StringLiteral() => getToken(CFloor7Parser.TOKEN_StringLiteral, 0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  ArrayInitializerContext? arrayInitializer() => getRuleContext<ArrayInitializerContext>(0);
  ArrayLiteralContext? arrayLiteral() => getRuleContext<ArrayLiteralContext>(0);
  FunctionInvocationContext? functionInvocation() => getRuleContext<FunctionInvocationContext>(0);
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitExpression(this);
  }
}

class FunctionInvocationContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor7Parser.TOKEN_Identifier, 0);
  List<VariableAccessorContext> variableAccessors() => getRuleContexts<VariableAccessorContext>();
  VariableAccessorContext? variableAccessor(int i) => getRuleContext<VariableAccessorContext>(i);
  FunctionInvocationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionInvocation;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterFunctionInvocation(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitFunctionInvocation(this);
  }
}

class FunctionInvocationStatementContext extends ParserRuleContext {
  FunctionInvocationContext? functionInvocation() => getRuleContext<FunctionInvocationContext>(0);
  FunctionInvocationStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_functionInvocationStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterFunctionInvocationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitFunctionInvocationStatement(this);
  }
}

class ReturnStatementContext extends ParserRuleContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ReturnStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_returnStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterReturnStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitReturnStatement(this);
  }
}

class StatementContext extends ParserRuleContext {
  WriteStatementContext? writeStatement() => getRuleContext<WriteStatementContext>(0);
  AssignStatementContext? assignStatement() => getRuleContext<AssignStatementContext>(0);
  DeclAssignStatementContext? declAssignStatement() => getRuleContext<DeclAssignStatementContext>(0);
  IfBlockContext? ifBlock() => getRuleContext<IfBlockContext>(0);
  WhileLoopContext? whileLoop() => getRuleContext<WhileLoopContext>(0);
  ForLoopContext? forLoop() => getRuleContext<ForLoopContext>(0);
  FunctionInvocationStatementContext? functionInvocationStatement() => getRuleContext<FunctionInvocationStatementContext>(0);
  ReturnStatementContext? returnStatement() => getRuleContext<ReturnStatementContext>(0);
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
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
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

