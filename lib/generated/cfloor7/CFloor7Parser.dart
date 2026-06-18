// Generated from grammars/CFloor7.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor7Listener.dart';
import 'CFloor7BaseListener.dart';
const int RULE_program = 0, RULE_functionDefinition = 1, RULE_returnType = 2, 
          RULE_parameterList = 3, RULE_parameter = 4, RULE_expression = 5, 
          RULE_functionInvocation = 6, RULE_statement = 7, RULE_functionInvocationStatement = 8, 
          RULE_returnStatement = 9, RULE_mathOperand = 10, RULE_booleanOperand = 11, 
          RULE_forLoop = 12, RULE_type = 13, RULE_arrayInitializer = 14, 
          RULE_arrayLiteral = 15, RULE_arrayLiteralElement = 16, RULE_assignment = 17, 
          RULE_arrayAccessExpression = 18, RULE_variableAccessor = 19, RULE_typedAssignment = 20, 
          RULE_whileLoop = 21, RULE_primitive = 22, RULE_booleanExpression = 23, 
          RULE_block = 24, RULE_ifStatement = 25, RULE_elseBlock = 26, RULE_ifBlock = 27, 
          RULE_stringLengthExpression = 28, RULE_readFunctionExpression = 29, 
          RULE_mathFunctionExpression = 30, RULE_declAssignStatement = 31, 
          RULE_assignStatement = 32, RULE_writeStatement = 33, RULE_mathExpression = 34;
class CFloor7Parser extends Parser {
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
                   TOKEN_T__30 = 31, TOKEN_T__31 = 32, TOKEN_T__32 = 33, 
                   TOKEN_BinaryBooleanOperator = 34, TOKEN_UnaryBooleanOperator = 35, 
                   TOKEN_BooleanLiteral = 36, TOKEN_Comparator = 37, TOKEN_Number = 38, 
                   TOKEN_MathOperatorPrioMult = 39, TOKEN_MathOperatorPrioAdd = 40, 
                   TOKEN_StringLiteral = 41, TOKEN_WS = 42, TOKEN_Identifier = 43;

  @override
  final List<String> ruleNames = [
    'program', 'functionDefinition', 'returnType', 'parameterList', 'parameter', 
    'expression', 'functionInvocation', 'statement', 'functionInvocationStatement', 
    'returnStatement', 'mathOperand', 'booleanOperand', 'forLoop', 'type', 
    'arrayInitializer', 'arrayLiteral', 'arrayLiteralElement', 'assignment', 
    'arrayAccessExpression', 'variableAccessor', 'typedAssignment', 'whileLoop', 
    'primitive', 'booleanExpression', 'block', 'ifStatement', 'elseBlock', 
    'ifBlock', 'stringLengthExpression', 'readFunctionExpression', 'mathFunctionExpression', 
    'declAssignStatement', 'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'void'", "','", "';'", "'return'", "'for'", "'array<'", 
      "'>'", "'['", "']'", "'{'", "'}'", "'='", "'while'", "'int'", "'float'", 
      "'string'", "'bool'", "'if'", "'else'", "'length('", "'read_int()'", 
      "'read_float()'", "'read_string()'", "'floor'", "'ceil'", "'round'", 
      "'sqrt'", "'sin'", "'cos'", "'tan'", "'write'", null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, "BinaryBooleanOperator", "UnaryBooleanOperator", "BooleanLiteral", 
      "Comparator", "Number", "MathOperatorPrioMult", "MathOperatorPrioAdd", 
      "StringLiteral", "WS", "Identifier"
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

  ProgramContext program() {
    dynamic _localctx = ProgramContext(context, state);
    enterRule(_localctx, 0, RULE_program);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 71; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 70;
        functionDefinition();
        state = 73; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 983304) != 0));
      state = 75;
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

  FunctionDefinitionContext functionDefinition() {
    dynamic _localctx = FunctionDefinitionContext(context, state);
    enterRule(_localctx, 2, RULE_functionDefinition);
    try {
      enterOuterAlt(_localctx, 1);
      state = 77;
      returnType();
      state = 78;
      match(TOKEN_Identifier);
      state = 79;
      match(TOKEN_T__0);
      state = 80;
      parameterList();
      state = 81;
      match(TOKEN_T__1);
      state = 82;
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

  ReturnTypeContext returnType() {
    dynamic _localctx = ReturnTypeContext(context, state);
    enterRule(_localctx, 4, RULE_returnType);
    try {
      state = 86;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__7:
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
        enterOuterAlt(_localctx, 1);
        state = 84;
        type();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 2);
        state = 85;
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

  ParameterListContext parameterList() {
    dynamic _localctx = ParameterListContext(context, state);
    enterRule(_localctx, 6, RULE_parameterList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 96;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 983296) != 0)) {
        state = 88;
        parameter();
        state = 93;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 89;
          match(TOKEN_T__3);
          state = 90;
          parameter();
          state = 95;
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

  ParameterContext parameter() {
    dynamic _localctx = ParameterContext(context, state);
    enterRule(_localctx, 8, RULE_parameter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 98;
      type();
      state = 99;
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

  ExpressionContext expression() {
    dynamic _localctx = ExpressionContext(context, state);
    enterRule(_localctx, 10, RULE_expression);
    try {
      state = 108;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 101;
        mathExpression(0);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 102;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 103;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 104;
        booleanExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 105;
        arrayInitializer();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 106;
        arrayLiteral();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 107;
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
    enterRule(_localctx, 12, RULE_functionInvocation);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 110;
      match(TOKEN_Identifier);
      state = 111;
      match(TOKEN_T__0);
      state = 120;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_Identifier) {
        state = 112;
        variableAccessor();
        state = 117;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 113;
          match(TOKEN_T__3);
          state = 114;
          variableAccessor();
          state = 119;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
      }

      state = 122;
      match(TOKEN_T__1);
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
    enterRule(_localctx, 14, RULE_statement);
    try {
      state = 132;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 124;
        writeStatement();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 125;
        assignStatement();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 126;
        declAssignStatement();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 127;
        ifBlock();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 128;
        whileLoop();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 129;
        forLoop();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 130;
        functionInvocationStatement();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 131;
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

  FunctionInvocationStatementContext functionInvocationStatement() {
    dynamic _localctx = FunctionInvocationStatementContext(context, state);
    enterRule(_localctx, 16, RULE_functionInvocationStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 134;
      functionInvocation();
      state = 135;
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
    enterRule(_localctx, 18, RULE_returnStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 137;
      match(TOKEN_T__5);
      state = 139;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 11381659144450) != 0)) {
        state = 138;
        expression();
      }

      state = 141;
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

  MathOperandContext mathOperand() {
    dynamic _localctx = MathOperandContext(context, state);
    enterRule(_localctx, 20, RULE_mathOperand);
    try {
      state = 148;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 9, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 143;
        match(TOKEN_Number);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 144;
        variableAccessor();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 145;
        mathFunctionExpression();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 146;
        stringLengthExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 147;
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

  BooleanOperandContext booleanOperand() {
    dynamic _localctx = BooleanOperandContext(context, state);
    enterRule(_localctx, 22, RULE_booleanOperand);
    try {
      state = 157;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 150;
        match(TOKEN_BooleanLiteral);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 151;
        variableAccessor();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 152;
        match(TOKEN_T__0);
        state = 153;
        booleanExpression();
        state = 154;
        match(TOKEN_T__1);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 156;
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

  ForLoopContext forLoop() {
    dynamic _localctx = ForLoopContext(context, state);
    enterRule(_localctx, 24, RULE_forLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 159;
      match(TOKEN_T__6);
      state = 160;
      match(TOKEN_T__0);
      state = 161;
      typedAssignment();
      state = 162;
      match(TOKEN_T__4);
      state = 163;
      booleanExpression();
      state = 164;
      match(TOKEN_T__4);
      state = 165;
      assignment();
      state = 166;
      match(TOKEN_T__1);
      state = 167;
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
    enterRule(_localctx, 26, RULE_type);
    try {
      state = 174;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
        enterOuterAlt(_localctx, 1);
        state = 169;
        primitive();
        break;
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 2);
        state = 170;
        match(TOKEN_T__7);
        state = 171;
        primitive();
        state = 172;
        match(TOKEN_T__8);
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

  ArrayInitializerContext arrayInitializer() {
    dynamic _localctx = ArrayInitializerContext(context, state);
    enterRule(_localctx, 28, RULE_arrayInitializer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 176;
      match(TOKEN_T__7);
      state = 177;
      primitive();
      state = 178;
      match(TOKEN_T__8);
      state = 179;
      match(TOKEN_T__9);
      state = 180;
      match(TOKEN_Number);
      state = 181;
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

  ArrayLiteralContext arrayLiteral() {
    dynamic _localctx = ArrayLiteralContext(context, state);
    enterRule(_localctx, 30, RULE_arrayLiteral);
    int _la;
    try {
      state = 196;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 183;
        match(TOKEN_T__11);
        state = 184;
        match(TOKEN_T__12);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 185;
        match(TOKEN_T__11);
        state = 186;
        arrayLiteralElement();
        state = 191;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 187;
          match(TOKEN_T__3);
          state = 188;
          arrayLiteralElement();
          state = 193;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 194;
        match(TOKEN_T__12);
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
    enterRule(_localctx, 32, RULE_arrayLiteralElement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 198;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 2542620639232) != 0))) {
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
    enterRule(_localctx, 34, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 200;
      variableAccessor();
      state = 201;
      match(TOKEN_T__13);
      state = 202;
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
    enterRule(_localctx, 36, RULE_arrayAccessExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 204;
      match(TOKEN_T__9);
      state = 205;
      mathExpression(0);
      state = 206;
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

  VariableAccessorContext variableAccessor() {
    dynamic _localctx = VariableAccessorContext(context, state);
    enterRule(_localctx, 38, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 208;
      match(TOKEN_Identifier);
      state = 210;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 14, context)) {
      case 1:
        state = 209;
        arrayAccessExpression();
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

  TypedAssignmentContext typedAssignment() {
    dynamic _localctx = TypedAssignmentContext(context, state);
    enterRule(_localctx, 40, RULE_typedAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 212;
      type();
      state = 213;
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
    enterRule(_localctx, 42, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 215;
      match(TOKEN_T__14);
      state = 216;
      match(TOKEN_T__0);
      state = 217;
      booleanExpression();
      state = 218;
      match(TOKEN_T__1);
      state = 219;
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
    enterRule(_localctx, 44, RULE_primitive);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 221;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 983040) != 0))) {
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

  BooleanExpressionContext booleanExpression() {
    dynamic _localctx = BooleanExpressionContext(context, state);
    enterRule(_localctx, 46, RULE_booleanExpression);
    int _la;
    try {
      state = 234;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 16, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 223;
        match(TOKEN_UnaryBooleanOperator);
        state = 224;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 225;
        mathExpression(0);
        state = 226;
        match(TOKEN_Comparator);
        state = 227;
        mathExpression(0);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 229;
        booleanOperand();
        state = 232;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 230;
          match(TOKEN_BinaryBooleanOperator);
          state = 231;
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
    enterRule(_localctx, 48, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 236;
      match(TOKEN_T__11);
      state = 238; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 237;
        statement();
        state = 240; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 8804685021632) != 0));
      state = 242;
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

  IfStatementContext ifStatement() {
    dynamic _localctx = IfStatementContext(context, state);
    enterRule(_localctx, 50, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 244;
      match(TOKEN_T__19);
      state = 245;
      match(TOKEN_T__0);
      state = 246;
      booleanExpression();
      state = 247;
      match(TOKEN_T__1);
      state = 248;
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
    enterRule(_localctx, 52, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 250;
      match(TOKEN_T__20);
      state = 251;
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
    enterRule(_localctx, 54, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 253;
      ifStatement();
      state = 258;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 254;
          match(TOKEN_T__20);
          state = 255;
          ifStatement(); 
        }
        state = 260;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
      }
      state = 262;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__20) {
        state = 261;
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
    enterRule(_localctx, 56, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 264;
      match(TOKEN_T__21);
      state = 265;
      variableAccessor();
      state = 266;
      match(TOKEN_T__1);
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
    enterRule(_localctx, 58, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 268;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 58720256) != 0))) {
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
    enterRule(_localctx, 60, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 270;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 8522825728) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 271;
      match(TOKEN_T__0);
      state = 272;
      mathExpression(0);
      state = 273;
      match(TOKEN_T__1);
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
    enterRule(_localctx, 62, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 275;
      type();
      state = 276;
      assignment();
      state = 277;
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
    enterRule(_localctx, 64, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 279;
      assignment();
      state = 280;
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
    enterRule(_localctx, 66, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 282;
      match(TOKEN_T__32);
      state = 283;
      match(TOKEN_T__0);
      state = 287;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 284;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 285;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 286;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 289;
      match(TOKEN_T__1);
      state = 290;
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

  MathExpressionContext mathExpression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = MathExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 68;
    enterRecursionRule(_localctx, 68, RULE_mathExpression, _p);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 298;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
        state = 293;
        match(TOKEN_T__0);
        state = 294;
        mathExpression(0);
        state = 295;
        match(TOKEN_T__1);
        break;
      case TOKEN_T__21:
      case TOKEN_T__25:
      case TOKEN_T__26:
      case TOKEN_T__27:
      case TOKEN_T__28:
      case TOKEN_T__29:
      case TOKEN_T__30:
      case TOKEN_T__31:
      case TOKEN_Number:
      case TOKEN_Identifier:
        state = 297;
        mathOperand();
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 308;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 23, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 306;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 22, context)) {
          case 1:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 300;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 301;
            match(TOKEN_MathOperatorPrioMult);
            state = 302;
            mathExpression(4);
            break;
          case 2:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 303;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 304;
            match(TOKEN_MathOperatorPrioAdd);
            state = 305;
            mathExpression(3);
            break;
          } 
        }
        state = 310;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 23, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 34:
      return _mathExpression_sempred(_localctx as MathExpressionContext?, predIndex);
    }
    return true;
  }
  bool _mathExpression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 3);
      case 1: return precpred(context, 2);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,43,312,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,
      7,34,1,0,4,0,72,8,0,11,0,12,0,73,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,2,1,2,3,2,87,8,2,1,3,1,3,1,3,5,3,92,8,3,10,3,12,3,95,9,3,3,3,97,
      8,3,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,109,8,5,1,6,1,6,1,
      6,1,6,1,6,5,6,116,8,6,10,6,12,6,119,9,6,3,6,121,8,6,1,6,1,6,1,7,1,
      7,1,7,1,7,1,7,1,7,1,7,1,7,3,7,133,8,7,1,8,1,8,1,8,1,9,1,9,3,9,140,
      8,9,1,9,1,9,1,10,1,10,1,10,1,10,1,10,3,10,149,8,10,1,11,1,11,1,11,
      1,11,1,11,1,11,1,11,3,11,158,8,11,1,12,1,12,1,12,1,12,1,12,1,12,1,
      12,1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,13,3,13,175,8,13,1,14,1,14,
      1,14,1,14,1,14,1,14,1,14,1,15,1,15,1,15,1,15,1,15,1,15,5,15,190,8,
      15,10,15,12,15,193,9,15,1,15,1,15,3,15,197,8,15,1,16,1,16,1,17,1,17,
      1,17,1,17,1,18,1,18,1,18,1,18,1,19,1,19,3,19,211,8,19,1,20,1,20,1,
      20,1,21,1,21,1,21,1,21,1,21,1,21,1,22,1,22,1,23,1,23,1,23,1,23,1,23,
      1,23,1,23,1,23,1,23,3,23,233,8,23,3,23,235,8,23,1,24,1,24,4,24,239,
      8,24,11,24,12,24,240,1,24,1,24,1,25,1,25,1,25,1,25,1,25,1,25,1,26,
      1,26,1,26,1,27,1,27,1,27,5,27,257,8,27,10,27,12,27,260,9,27,1,27,3,
      27,263,8,27,1,28,1,28,1,28,1,28,1,29,1,29,1,30,1,30,1,30,1,30,1,30,
      1,31,1,31,1,31,1,31,1,32,1,32,1,32,1,33,1,33,1,33,1,33,1,33,3,33,288,
      8,33,1,33,1,33,1,33,1,34,1,34,1,34,1,34,1,34,1,34,3,34,299,8,34,1,
      34,1,34,1,34,1,34,1,34,1,34,5,34,307,8,34,10,34,12,34,310,9,34,1,34,
      0,1,68,35,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,
      42,44,46,48,50,52,54,56,58,60,62,64,66,68,0,4,3,0,36,36,38,38,41,41,
      1,0,16,19,1,0,23,25,1,0,26,32,318,0,71,1,0,0,0,2,77,1,0,0,0,4,86,1,
      0,0,0,6,96,1,0,0,0,8,98,1,0,0,0,10,108,1,0,0,0,12,110,1,0,0,0,14,132,
      1,0,0,0,16,134,1,0,0,0,18,137,1,0,0,0,20,148,1,0,0,0,22,157,1,0,0,
      0,24,159,1,0,0,0,26,174,1,0,0,0,28,176,1,0,0,0,30,196,1,0,0,0,32,198,
      1,0,0,0,34,200,1,0,0,0,36,204,1,0,0,0,38,208,1,0,0,0,40,212,1,0,0,
      0,42,215,1,0,0,0,44,221,1,0,0,0,46,234,1,0,0,0,48,236,1,0,0,0,50,244,
      1,0,0,0,52,250,1,0,0,0,54,253,1,0,0,0,56,264,1,0,0,0,58,268,1,0,0,
      0,60,270,1,0,0,0,62,275,1,0,0,0,64,279,1,0,0,0,66,282,1,0,0,0,68,298,
      1,0,0,0,70,72,3,2,1,0,71,70,1,0,0,0,72,73,1,0,0,0,73,71,1,0,0,0,73,
      74,1,0,0,0,74,75,1,0,0,0,75,76,5,0,0,1,76,1,1,0,0,0,77,78,3,4,2,0,
      78,79,5,43,0,0,79,80,5,1,0,0,80,81,3,6,3,0,81,82,5,2,0,0,82,83,3,48,
      24,0,83,3,1,0,0,0,84,87,3,26,13,0,85,87,5,3,0,0,86,84,1,0,0,0,86,85,
      1,0,0,0,87,5,1,0,0,0,88,93,3,8,4,0,89,90,5,4,0,0,90,92,3,8,4,0,91,
      89,1,0,0,0,92,95,1,0,0,0,93,91,1,0,0,0,93,94,1,0,0,0,94,97,1,0,0,0,
      95,93,1,0,0,0,96,88,1,0,0,0,96,97,1,0,0,0,97,7,1,0,0,0,98,99,3,26,
      13,0,99,100,5,43,0,0,100,9,1,0,0,0,101,109,3,68,34,0,102,109,3,58,
      29,0,103,109,5,41,0,0,104,109,3,46,23,0,105,109,3,28,14,0,106,109,
      3,30,15,0,107,109,3,12,6,0,108,101,1,0,0,0,108,102,1,0,0,0,108,103,
      1,0,0,0,108,104,1,0,0,0,108,105,1,0,0,0,108,106,1,0,0,0,108,107,1,
      0,0,0,109,11,1,0,0,0,110,111,5,43,0,0,111,120,5,1,0,0,112,117,3,38,
      19,0,113,114,5,4,0,0,114,116,3,38,19,0,115,113,1,0,0,0,116,119,1,0,
      0,0,117,115,1,0,0,0,117,118,1,0,0,0,118,121,1,0,0,0,119,117,1,0,0,
      0,120,112,1,0,0,0,120,121,1,0,0,0,121,122,1,0,0,0,122,123,5,2,0,0,
      123,13,1,0,0,0,124,133,3,66,33,0,125,133,3,64,32,0,126,133,3,62,31,
      0,127,133,3,54,27,0,128,133,3,42,21,0,129,133,3,24,12,0,130,133,3,
      16,8,0,131,133,3,18,9,0,132,124,1,0,0,0,132,125,1,0,0,0,132,126,1,
      0,0,0,132,127,1,0,0,0,132,128,1,0,0,0,132,129,1,0,0,0,132,130,1,0,
      0,0,132,131,1,0,0,0,133,15,1,0,0,0,134,135,3,12,6,0,135,136,5,5,0,
      0,136,17,1,0,0,0,137,139,5,6,0,0,138,140,3,10,5,0,139,138,1,0,0,0,
      139,140,1,0,0,0,140,141,1,0,0,0,141,142,5,5,0,0,142,19,1,0,0,0,143,
      149,5,38,0,0,144,149,3,38,19,0,145,149,3,60,30,0,146,149,3,56,28,0,
      147,149,3,12,6,0,148,143,1,0,0,0,148,144,1,0,0,0,148,145,1,0,0,0,148,
      146,1,0,0,0,148,147,1,0,0,0,149,21,1,0,0,0,150,158,5,36,0,0,151,158,
      3,38,19,0,152,153,5,1,0,0,153,154,3,46,23,0,154,155,5,2,0,0,155,158,
      1,0,0,0,156,158,3,12,6,0,157,150,1,0,0,0,157,151,1,0,0,0,157,152,1,
      0,0,0,157,156,1,0,0,0,158,23,1,0,0,0,159,160,5,7,0,0,160,161,5,1,0,
      0,161,162,3,40,20,0,162,163,5,5,0,0,163,164,3,46,23,0,164,165,5,5,
      0,0,165,166,3,34,17,0,166,167,5,2,0,0,167,168,3,48,24,0,168,25,1,0,
      0,0,169,175,3,44,22,0,170,171,5,8,0,0,171,172,3,44,22,0,172,173,5,
      9,0,0,173,175,1,0,0,0,174,169,1,0,0,0,174,170,1,0,0,0,175,27,1,0,0,
      0,176,177,5,8,0,0,177,178,3,44,22,0,178,179,5,9,0,0,179,180,5,10,0,
      0,180,181,5,38,0,0,181,182,5,11,0,0,182,29,1,0,0,0,183,184,5,12,0,
      0,184,197,5,13,0,0,185,186,5,12,0,0,186,191,3,32,16,0,187,188,5,4,
      0,0,188,190,3,32,16,0,189,187,1,0,0,0,190,193,1,0,0,0,191,189,1,0,
      0,0,191,192,1,0,0,0,192,194,1,0,0,0,193,191,1,0,0,0,194,195,5,13,0,
      0,195,197,1,0,0,0,196,183,1,0,0,0,196,185,1,0,0,0,197,31,1,0,0,0,198,
      199,7,0,0,0,199,33,1,0,0,0,200,201,3,38,19,0,201,202,5,14,0,0,202,
      203,3,10,5,0,203,35,1,0,0,0,204,205,5,10,0,0,205,206,3,68,34,0,206,
      207,5,11,0,0,207,37,1,0,0,0,208,210,5,43,0,0,209,211,3,36,18,0,210,
      209,1,0,0,0,210,211,1,0,0,0,211,39,1,0,0,0,212,213,3,26,13,0,213,214,
      3,34,17,0,214,41,1,0,0,0,215,216,5,15,0,0,216,217,5,1,0,0,217,218,
      3,46,23,0,218,219,5,2,0,0,219,220,3,48,24,0,220,43,1,0,0,0,221,222,
      7,1,0,0,222,45,1,0,0,0,223,224,5,35,0,0,224,235,3,22,11,0,225,226,
      3,68,34,0,226,227,5,37,0,0,227,228,3,68,34,0,228,235,1,0,0,0,229,232,
      3,22,11,0,230,231,5,34,0,0,231,233,3,22,11,0,232,230,1,0,0,0,232,233,
      1,0,0,0,233,235,1,0,0,0,234,223,1,0,0,0,234,225,1,0,0,0,234,229,1,
      0,0,0,235,47,1,0,0,0,236,238,5,12,0,0,237,239,3,14,7,0,238,237,1,0,
      0,0,239,240,1,0,0,0,240,238,1,0,0,0,240,241,1,0,0,0,241,242,1,0,0,
      0,242,243,5,13,0,0,243,49,1,0,0,0,244,245,5,20,0,0,245,246,5,1,0,0,
      246,247,3,46,23,0,247,248,5,2,0,0,248,249,3,48,24,0,249,51,1,0,0,0,
      250,251,5,21,0,0,251,252,3,48,24,0,252,53,1,0,0,0,253,258,3,50,25,
      0,254,255,5,21,0,0,255,257,3,50,25,0,256,254,1,0,0,0,257,260,1,0,0,
      0,258,256,1,0,0,0,258,259,1,0,0,0,259,262,1,0,0,0,260,258,1,0,0,0,
      261,263,3,52,26,0,262,261,1,0,0,0,262,263,1,0,0,0,263,55,1,0,0,0,264,
      265,5,22,0,0,265,266,3,38,19,0,266,267,5,2,0,0,267,57,1,0,0,0,268,
      269,7,2,0,0,269,59,1,0,0,0,270,271,7,3,0,0,271,272,5,1,0,0,272,273,
      3,68,34,0,273,274,5,2,0,0,274,61,1,0,0,0,275,276,3,26,13,0,276,277,
      3,34,17,0,277,278,5,5,0,0,278,63,1,0,0,0,279,280,3,34,17,0,280,281,
      5,5,0,0,281,65,1,0,0,0,282,283,5,33,0,0,283,287,5,1,0,0,284,288,3,
      38,19,0,285,288,5,38,0,0,286,288,5,41,0,0,287,284,1,0,0,0,287,285,
      1,0,0,0,287,286,1,0,0,0,288,289,1,0,0,0,289,290,5,2,0,0,290,291,5,
      5,0,0,291,67,1,0,0,0,292,293,6,34,-1,0,293,294,5,1,0,0,294,295,3,68,
      34,0,295,296,5,2,0,0,296,299,1,0,0,0,297,299,3,20,10,0,298,292,1,0,
      0,0,298,297,1,0,0,0,299,308,1,0,0,0,300,301,10,3,0,0,301,302,5,39,
      0,0,302,307,3,68,34,4,303,304,10,2,0,0,304,305,5,40,0,0,305,307,3,
      68,34,3,306,300,1,0,0,0,306,303,1,0,0,0,307,310,1,0,0,0,308,306,1,
      0,0,0,308,309,1,0,0,0,309,69,1,0,0,0,310,308,1,0,0,0,24,73,86,93,96,
      108,117,120,132,139,148,157,174,191,196,210,232,234,240,258,262,287,
      298,306,308
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
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

class MathOperandContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor7Parser.TOKEN_Number, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  MathFunctionExpressionContext? mathFunctionExpression() => getRuleContext<MathFunctionExpressionContext>(0);
  StringLengthExpressionContext? stringLengthExpression() => getRuleContext<StringLengthExpressionContext>(0);
  FunctionInvocationContext? functionInvocation() => getRuleContext<FunctionInvocationContext>(0);
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

class BooleanOperandContext extends ParserRuleContext {
  TerminalNode? BooleanLiteral() => getToken(CFloor7Parser.TOKEN_BooleanLiteral, 0);
  VariableAccessorContext? variableAccessor() => getRuleContext<VariableAccessorContext>(0);
  BooleanExpressionContext? booleanExpression() => getRuleContext<BooleanExpressionContext>(0);
  FunctionInvocationContext? functionInvocation() => getRuleContext<FunctionInvocationContext>(0);
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

class TypeContext extends ParserRuleContext {
  PrimitiveContext? primitive() => getRuleContext<PrimitiveContext>(0);
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

class ArrayInitializerContext extends ParserRuleContext {
  PrimitiveContext? primitive() => getRuleContext<PrimitiveContext>(0);
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

class ArrayLiteralElementContext extends ParserRuleContext {
  TerminalNode? Number() => getToken(CFloor7Parser.TOKEN_Number, 0);
  TerminalNode? StringLiteral() => getToken(CFloor7Parser.TOKEN_StringLiteral, 0);
  TerminalNode? BooleanLiteral() => getToken(CFloor7Parser.TOKEN_BooleanLiteral, 0);
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

class ArrayAccessExpressionContext extends ParserRuleContext {
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
  ArrayAccessExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_arrayAccessExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterArrayAccessExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitArrayAccessExpression(this);
  }
}

class VariableAccessorContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(CFloor7Parser.TOKEN_Identifier, 0);
  ArrayAccessExpressionContext? arrayAccessExpression() => getRuleContext<ArrayAccessExpressionContext>(0);
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

class PrimitiveContext extends ParserRuleContext {
  PrimitiveContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primitive;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.enterPrimitive(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is CFloor7Listener) listener.exitPrimitive(this);
  }
}

class BooleanExpressionContext extends ParserRuleContext {
  TerminalNode? UnaryBooleanOperator() => getToken(CFloor7Parser.TOKEN_UnaryBooleanOperator, 0);
  List<BooleanOperandContext> booleanOperands() => getRuleContexts<BooleanOperandContext>();
  BooleanOperandContext? booleanOperand(int i) => getRuleContext<BooleanOperandContext>(i);
  List<MathExpressionContext> mathExpressions() => getRuleContexts<MathExpressionContext>();
  MathExpressionContext? mathExpression(int i) => getRuleContext<MathExpressionContext>(i);
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
  List<MathExpressionContext> mathExpressions() => getRuleContexts<MathExpressionContext>();
  MathExpressionContext? mathExpression(int i) => getRuleContext<MathExpressionContext>(i);
  MathOperandContext? mathOperand() => getRuleContext<MathOperandContext>(0);
  TerminalNode? MathOperatorPrioMult() => getToken(CFloor7Parser.TOKEN_MathOperatorPrioMult, 0);
  TerminalNode? MathOperatorPrioAdd() => getToken(CFloor7Parser.TOKEN_MathOperatorPrioAdd, 0);
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

