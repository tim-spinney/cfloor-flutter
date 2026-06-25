// Generated from grammars/CFloor7.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'CFloor7Listener.dart';
import 'CFloor7BaseListener.dart';
const int RULE_program = 0, RULE_functionDefinition = 1, RULE_returnType = 2, 
          RULE_parameterList = 3, RULE_parameter = 4, RULE_expression = 5, 
          RULE_functionInvocation = 6, RULE_statement = 7, RULE_functionInvocationStatement = 8, 
          RULE_returnStatement = 9, RULE_mathOperand = 10, RULE_mathFunctionExpression = 11, 
          RULE_stringLengthExpression = 12, RULE_readFunctionExpression = 13, 
          RULE_booleanOperand = 14, RULE_forLoop = 15, RULE_type = 16, RULE_arrayInitializer = 17, 
          RULE_arrayLiteral = 18, RULE_arrayLiteralElement = 19, RULE_assignment = 20, 
          RULE_arrayAccessExpression = 21, RULE_variableAccessor = 22, RULE_typedAssignment = 23, 
          RULE_whileLoop = 24, RULE_primitive = 25, RULE_booleanExpression = 26, 
          RULE_block = 27, RULE_ifStatement = 28, RULE_elseBlock = 29, RULE_ifBlock = 30, 
          RULE_declAssignStatement = 31, RULE_assignStatement = 32, RULE_writeStatement = 33, 
          RULE_mathExpression = 34;
class CFloor7Parser extends Parser {
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
                   TOKEN_T__21 = 22, TOKEN_BinaryBooleanOperator = 23, TOKEN_UnaryBooleanOperator = 24, 
                   TOKEN_BooleanLiteral = 25, TOKEN_Comparator = 26, TOKEN_Number = 27, 
                   TOKEN_MathOperatorPrioMult = 28, TOKEN_MathOperatorPrioAdd = 29, 
                   TOKEN_StringLiteral = 30, TOKEN_WS = 31, TOKEN_Identifier = 32;

  @override
  final List<String> ruleNames = [
    'program', 'functionDefinition', 'returnType', 'parameterList', 'parameter', 
    'expression', 'functionInvocation', 'statement', 'functionInvocationStatement', 
    'returnStatement', 'mathOperand', 'mathFunctionExpression', 'stringLengthExpression', 
    'readFunctionExpression', 'booleanOperand', 'forLoop', 'type', 'arrayInitializer', 
    'arrayLiteral', 'arrayLiteralElement', 'assignment', 'arrayAccessExpression', 
    'variableAccessor', 'typedAssignment', 'whileLoop', 'primitive', 'booleanExpression', 
    'block', 'ifStatement', 'elseBlock', 'ifBlock', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'void'", "','", "';'", "'return'", "'for'", "'array<'", 
      "'>'", "'['", "']'", "'{'", "'}'", "'='", "'while'", "'int'", "'float'", 
      "'string'", "'bool'", "'if'", "'else'", "'write'", null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
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
      state = 107;
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
        match(TOKEN_StringLiteral);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 103;
        booleanExpression();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 104;
        arrayInitializer();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 105;
        arrayLiteral();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 106;
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
      state = 109;
      match(TOKEN_Identifier);
      state = 110;
      match(TOKEN_T__0);
      state = 119;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_Identifier) {
        state = 111;
        variableAccessor();
        state = 116;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 112;
          match(TOKEN_T__3);
          state = 113;
          variableAccessor();
          state = 118;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
      }

      state = 121;
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
      state = 131;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 123;
        writeStatement();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 124;
        assignStatement();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 125;
        declAssignStatement();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 126;
        ifBlock();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 127;
        whileLoop();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 128;
        forLoop();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 129;
        functionInvocationStatement();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 130;
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
      state = 133;
      functionInvocation();
      state = 134;
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
      state = 136;
      match(TOKEN_T__5);
      state = 138;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 5553262850) != 0)) {
        state = 137;
        expression();
      }

      state = 140;
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
      state = 145;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 9, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 142;
        match(TOKEN_Number);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 143;
        variableAccessor();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 144;
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

  MathFunctionExpressionContext mathFunctionExpression() {
    dynamic _localctx = MathFunctionExpressionContext(context, state);
    enterRule(_localctx, 22, RULE_mathFunctionExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 147;
      functionInvocation();
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
    enterRule(_localctx, 24, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 149;
      functionInvocation();
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
    enterRule(_localctx, 26, RULE_readFunctionExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 151;
      functionInvocation();
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
      state = 160;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 153;
        match(TOKEN_BooleanLiteral);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 154;
        variableAccessor();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 155;
        match(TOKEN_T__0);
        state = 156;
        booleanExpression();
        state = 157;
        match(TOKEN_T__1);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 159;
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
    enterRule(_localctx, 30, RULE_forLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 162;
      match(TOKEN_T__6);
      state = 163;
      match(TOKEN_T__0);
      state = 164;
      typedAssignment();
      state = 165;
      match(TOKEN_T__4);
      state = 166;
      booleanExpression();
      state = 167;
      match(TOKEN_T__4);
      state = 168;
      assignment();
      state = 169;
      match(TOKEN_T__1);
      state = 170;
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
    enterRule(_localctx, 32, RULE_type);
    try {
      state = 177;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
        enterOuterAlt(_localctx, 1);
        state = 172;
        primitive();
        break;
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 2);
        state = 173;
        match(TOKEN_T__7);
        state = 174;
        primitive();
        state = 175;
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
    enterRule(_localctx, 34, RULE_arrayInitializer);
    try {
      enterOuterAlt(_localctx, 1);
      state = 179;
      match(TOKEN_T__7);
      state = 180;
      primitive();
      state = 181;
      match(TOKEN_T__8);
      state = 182;
      match(TOKEN_T__9);
      state = 183;
      match(TOKEN_Number);
      state = 184;
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
    enterRule(_localctx, 36, RULE_arrayLiteral);
    int _la;
    try {
      state = 199;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 186;
        match(TOKEN_T__11);
        state = 187;
        match(TOKEN_T__12);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 188;
        match(TOKEN_T__11);
        state = 189;
        arrayLiteralElement();
        state = 194;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 190;
          match(TOKEN_T__3);
          state = 191;
          arrayLiteralElement();
          state = 196;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 197;
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
    enterRule(_localctx, 38, RULE_arrayLiteralElement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 201;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 1241513984) != 0))) {
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
    enterRule(_localctx, 40, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 203;
      variableAccessor();
      state = 204;
      match(TOKEN_T__13);
      state = 205;
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
    enterRule(_localctx, 42, RULE_arrayAccessExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 207;
      match(TOKEN_T__9);
      state = 208;
      mathExpression(0);
      state = 209;
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
    enterRule(_localctx, 44, RULE_variableAccessor);
    try {
      enterOuterAlt(_localctx, 1);
      state = 211;
      match(TOKEN_Identifier);
      state = 213;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 14, context)) {
      case 1:
        state = 212;
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
    enterRule(_localctx, 46, RULE_typedAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 215;
      type();
      state = 216;
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
    enterRule(_localctx, 48, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 218;
      match(TOKEN_T__14);
      state = 219;
      match(TOKEN_T__0);
      state = 220;
      booleanExpression();
      state = 221;
      match(TOKEN_T__1);
      state = 222;
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
    enterRule(_localctx, 50, RULE_primitive);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 224;
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
    enterRule(_localctx, 52, RULE_booleanExpression);
    int _la;
    try {
      state = 237;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 16, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 226;
        match(TOKEN_UnaryBooleanOperator);
        state = 227;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 228;
        mathExpression(0);
        state = 229;
        match(TOKEN_Comparator);
        state = 230;
        mathExpression(0);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 232;
        booleanOperand();
        state = 235;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 233;
          match(TOKEN_BinaryBooleanOperator);
          state = 234;
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
    enterRule(_localctx, 54, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 239;
      match(TOKEN_T__11);
      state = 241; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 240;
        statement();
        state = 243; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4301226432) != 0));
      state = 245;
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
    enterRule(_localctx, 56, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 247;
      match(TOKEN_T__19);
      state = 248;
      match(TOKEN_T__0);
      state = 249;
      booleanExpression();
      state = 250;
      match(TOKEN_T__1);
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

  ElseBlockContext elseBlock() {
    dynamic _localctx = ElseBlockContext(context, state);
    enterRule(_localctx, 58, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 253;
      match(TOKEN_T__20);
      state = 254;
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
    enterRule(_localctx, 60, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 256;
      ifStatement();
      state = 261;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 257;
          match(TOKEN_T__20);
          state = 258;
          ifStatement(); 
        }
        state = 263;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 18, context);
      }
      state = 265;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__20) {
        state = 264;
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

  DeclAssignStatementContext declAssignStatement() {
    dynamic _localctx = DeclAssignStatementContext(context, state);
    enterRule(_localctx, 62, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 267;
      type();
      state = 268;
      assignment();
      state = 269;
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
      state = 271;
      assignment();
      state = 272;
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
      state = 274;
      match(TOKEN_T__21);
      state = 275;
      match(TOKEN_T__0);
      state = 279;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 276;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 277;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 278;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 281;
      match(TOKEN_T__1);
      state = 282;
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
      state = 290;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__0:
        state = 285;
        match(TOKEN_T__0);
        state = 286;
        mathExpression(0);
        state = 287;
        match(TOKEN_T__1);
        break;
      case TOKEN_Number:
      case TOKEN_Identifier:
        state = 289;
        mathOperand();
        break;
      default:
        throw NoViableAltException(this);
      }
      context!.stop = tokenStream.LT(-1);
      state = 300;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 23, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 298;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 22, context)) {
          case 1:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 292;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 293;
            match(TOKEN_MathOperatorPrioMult);
            state = 294;
            mathExpression(4);
            break;
          case 2:
            _localctx = MathExpressionContext(_parentctx, _parentState);
            pushNewRecursionContext(_localctx, _startState, RULE_mathExpression);
            state = 295;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 296;
            match(TOKEN_MathOperatorPrioAdd);
            state = 297;
            mathExpression(3);
            break;
          } 
        }
        state = 302;
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
      4,1,32,304,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,
      7,34,1,0,4,0,72,8,0,11,0,12,0,73,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
      1,1,2,1,2,3,2,87,8,2,1,3,1,3,1,3,5,3,92,8,3,10,3,12,3,95,9,3,3,3,97,
      8,3,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,3,5,108,8,5,1,6,1,6,1,6,1,
      6,1,6,5,6,115,8,6,10,6,12,6,118,9,6,3,6,120,8,6,1,6,1,6,1,7,1,7,1,
      7,1,7,1,7,1,7,1,7,1,7,3,7,132,8,7,1,8,1,8,1,8,1,9,1,9,3,9,139,8,9,
      1,9,1,9,1,10,1,10,1,10,3,10,146,8,10,1,11,1,11,1,12,1,12,1,13,1,13,
      1,14,1,14,1,14,1,14,1,14,1,14,1,14,3,14,161,8,14,1,15,1,15,1,15,1,
      15,1,15,1,15,1,15,1,15,1,15,1,15,1,16,1,16,1,16,1,16,1,16,3,16,178,
      8,16,1,17,1,17,1,17,1,17,1,17,1,17,1,17,1,18,1,18,1,18,1,18,1,18,1,
      18,5,18,193,8,18,10,18,12,18,196,9,18,1,18,1,18,3,18,200,8,18,1,19,
      1,19,1,20,1,20,1,20,1,20,1,21,1,21,1,21,1,21,1,22,1,22,3,22,214,8,
      22,1,23,1,23,1,23,1,24,1,24,1,24,1,24,1,24,1,24,1,25,1,25,1,26,1,26,
      1,26,1,26,1,26,1,26,1,26,1,26,1,26,3,26,236,8,26,3,26,238,8,26,1,27,
      1,27,4,27,242,8,27,11,27,12,27,243,1,27,1,27,1,28,1,28,1,28,1,28,1,
      28,1,28,1,29,1,29,1,29,1,30,1,30,1,30,5,30,260,8,30,10,30,12,30,263,
      9,30,1,30,3,30,266,8,30,1,31,1,31,1,31,1,31,1,32,1,32,1,32,1,33,1,
      33,1,33,1,33,1,33,3,33,280,8,33,1,33,1,33,1,33,1,34,1,34,1,34,1,34,
      1,34,1,34,3,34,291,8,34,1,34,1,34,1,34,1,34,1,34,1,34,5,34,299,8,34,
      10,34,12,34,302,9,34,1,34,0,1,68,35,0,2,4,6,8,10,12,14,16,18,20,22,
      24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,
      68,0,2,3,0,25,25,27,27,30,30,1,0,16,19,307,0,71,1,0,0,0,2,77,1,0,0,
      0,4,86,1,0,0,0,6,96,1,0,0,0,8,98,1,0,0,0,10,107,1,0,0,0,12,109,1,0,
      0,0,14,131,1,0,0,0,16,133,1,0,0,0,18,136,1,0,0,0,20,145,1,0,0,0,22,
      147,1,0,0,0,24,149,1,0,0,0,26,151,1,0,0,0,28,160,1,0,0,0,30,162,1,
      0,0,0,32,177,1,0,0,0,34,179,1,0,0,0,36,199,1,0,0,0,38,201,1,0,0,0,
      40,203,1,0,0,0,42,207,1,0,0,0,44,211,1,0,0,0,46,215,1,0,0,0,48,218,
      1,0,0,0,50,224,1,0,0,0,52,237,1,0,0,0,54,239,1,0,0,0,56,247,1,0,0,
      0,58,253,1,0,0,0,60,256,1,0,0,0,62,267,1,0,0,0,64,271,1,0,0,0,66,274,
      1,0,0,0,68,290,1,0,0,0,70,72,3,2,1,0,71,70,1,0,0,0,72,73,1,0,0,0,73,
      71,1,0,0,0,73,74,1,0,0,0,74,75,1,0,0,0,75,76,5,0,0,1,76,1,1,0,0,0,
      77,78,3,4,2,0,78,79,5,32,0,0,79,80,5,1,0,0,80,81,3,6,3,0,81,82,5,2,
      0,0,82,83,3,54,27,0,83,3,1,0,0,0,84,87,3,32,16,0,85,87,5,3,0,0,86,
      84,1,0,0,0,86,85,1,0,0,0,87,5,1,0,0,0,88,93,3,8,4,0,89,90,5,4,0,0,
      90,92,3,8,4,0,91,89,1,0,0,0,92,95,1,0,0,0,93,91,1,0,0,0,93,94,1,0,
      0,0,94,97,1,0,0,0,95,93,1,0,0,0,96,88,1,0,0,0,96,97,1,0,0,0,97,7,1,
      0,0,0,98,99,3,32,16,0,99,100,5,32,0,0,100,9,1,0,0,0,101,108,3,68,34,
      0,102,108,5,30,0,0,103,108,3,52,26,0,104,108,3,34,17,0,105,108,3,36,
      18,0,106,108,3,12,6,0,107,101,1,0,0,0,107,102,1,0,0,0,107,103,1,0,
      0,0,107,104,1,0,0,0,107,105,1,0,0,0,107,106,1,0,0,0,108,11,1,0,0,0,
      109,110,5,32,0,0,110,119,5,1,0,0,111,116,3,44,22,0,112,113,5,4,0,0,
      113,115,3,44,22,0,114,112,1,0,0,0,115,118,1,0,0,0,116,114,1,0,0,0,
      116,117,1,0,0,0,117,120,1,0,0,0,118,116,1,0,0,0,119,111,1,0,0,0,119,
      120,1,0,0,0,120,121,1,0,0,0,121,122,5,2,0,0,122,13,1,0,0,0,123,132,
      3,66,33,0,124,132,3,64,32,0,125,132,3,62,31,0,126,132,3,60,30,0,127,
      132,3,48,24,0,128,132,3,30,15,0,129,132,3,16,8,0,130,132,3,18,9,0,
      131,123,1,0,0,0,131,124,1,0,0,0,131,125,1,0,0,0,131,126,1,0,0,0,131,
      127,1,0,0,0,131,128,1,0,0,0,131,129,1,0,0,0,131,130,1,0,0,0,132,15,
      1,0,0,0,133,134,3,12,6,0,134,135,5,5,0,0,135,17,1,0,0,0,136,138,5,
      6,0,0,137,139,3,10,5,0,138,137,1,0,0,0,138,139,1,0,0,0,139,140,1,0,
      0,0,140,141,5,5,0,0,141,19,1,0,0,0,142,146,5,27,0,0,143,146,3,44,22,
      0,144,146,3,12,6,0,145,142,1,0,0,0,145,143,1,0,0,0,145,144,1,0,0,0,
      146,21,1,0,0,0,147,148,3,12,6,0,148,23,1,0,0,0,149,150,3,12,6,0,150,
      25,1,0,0,0,151,152,3,12,6,0,152,27,1,0,0,0,153,161,5,25,0,0,154,161,
      3,44,22,0,155,156,5,1,0,0,156,157,3,52,26,0,157,158,5,2,0,0,158,161,
      1,0,0,0,159,161,3,12,6,0,160,153,1,0,0,0,160,154,1,0,0,0,160,155,1,
      0,0,0,160,159,1,0,0,0,161,29,1,0,0,0,162,163,5,7,0,0,163,164,5,1,0,
      0,164,165,3,46,23,0,165,166,5,5,0,0,166,167,3,52,26,0,167,168,5,5,
      0,0,168,169,3,40,20,0,169,170,5,2,0,0,170,171,3,54,27,0,171,31,1,0,
      0,0,172,178,3,50,25,0,173,174,5,8,0,0,174,175,3,50,25,0,175,176,5,
      9,0,0,176,178,1,0,0,0,177,172,1,0,0,0,177,173,1,0,0,0,178,33,1,0,0,
      0,179,180,5,8,0,0,180,181,3,50,25,0,181,182,5,9,0,0,182,183,5,10,0,
      0,183,184,5,27,0,0,184,185,5,11,0,0,185,35,1,0,0,0,186,187,5,12,0,
      0,187,200,5,13,0,0,188,189,5,12,0,0,189,194,3,38,19,0,190,191,5,4,
      0,0,191,193,3,38,19,0,192,190,1,0,0,0,193,196,1,0,0,0,194,192,1,0,
      0,0,194,195,1,0,0,0,195,197,1,0,0,0,196,194,1,0,0,0,197,198,5,13,0,
      0,198,200,1,0,0,0,199,186,1,0,0,0,199,188,1,0,0,0,200,37,1,0,0,0,201,
      202,7,0,0,0,202,39,1,0,0,0,203,204,3,44,22,0,204,205,5,14,0,0,205,
      206,3,10,5,0,206,41,1,0,0,0,207,208,5,10,0,0,208,209,3,68,34,0,209,
      210,5,11,0,0,210,43,1,0,0,0,211,213,5,32,0,0,212,214,3,42,21,0,213,
      212,1,0,0,0,213,214,1,0,0,0,214,45,1,0,0,0,215,216,3,32,16,0,216,217,
      3,40,20,0,217,47,1,0,0,0,218,219,5,15,0,0,219,220,5,1,0,0,220,221,
      3,52,26,0,221,222,5,2,0,0,222,223,3,54,27,0,223,49,1,0,0,0,224,225,
      7,1,0,0,225,51,1,0,0,0,226,227,5,24,0,0,227,238,3,28,14,0,228,229,
      3,68,34,0,229,230,5,26,0,0,230,231,3,68,34,0,231,238,1,0,0,0,232,235,
      3,28,14,0,233,234,5,23,0,0,234,236,3,28,14,0,235,233,1,0,0,0,235,236,
      1,0,0,0,236,238,1,0,0,0,237,226,1,0,0,0,237,228,1,0,0,0,237,232,1,
      0,0,0,238,53,1,0,0,0,239,241,5,12,0,0,240,242,3,14,7,0,241,240,1,0,
      0,0,242,243,1,0,0,0,243,241,1,0,0,0,243,244,1,0,0,0,244,245,1,0,0,
      0,245,246,5,13,0,0,246,55,1,0,0,0,247,248,5,20,0,0,248,249,5,1,0,0,
      249,250,3,52,26,0,250,251,5,2,0,0,251,252,3,54,27,0,252,57,1,0,0,0,
      253,254,5,21,0,0,254,255,3,54,27,0,255,59,1,0,0,0,256,261,3,56,28,
      0,257,258,5,21,0,0,258,260,3,56,28,0,259,257,1,0,0,0,260,263,1,0,0,
      0,261,259,1,0,0,0,261,262,1,0,0,0,262,265,1,0,0,0,263,261,1,0,0,0,
      264,266,3,58,29,0,265,264,1,0,0,0,265,266,1,0,0,0,266,61,1,0,0,0,267,
      268,3,32,16,0,268,269,3,40,20,0,269,270,5,5,0,0,270,63,1,0,0,0,271,
      272,3,40,20,0,272,273,5,5,0,0,273,65,1,0,0,0,274,275,5,22,0,0,275,
      279,5,1,0,0,276,280,3,44,22,0,277,280,5,27,0,0,278,280,5,30,0,0,279,
      276,1,0,0,0,279,277,1,0,0,0,279,278,1,0,0,0,280,281,1,0,0,0,281,282,
      5,2,0,0,282,283,5,5,0,0,283,67,1,0,0,0,284,285,6,34,-1,0,285,286,5,
      1,0,0,286,287,3,68,34,0,287,288,5,2,0,0,288,291,1,0,0,0,289,291,3,
      20,10,0,290,284,1,0,0,0,290,289,1,0,0,0,291,300,1,0,0,0,292,293,10,
      3,0,0,293,294,5,28,0,0,294,299,3,68,34,4,295,296,10,2,0,0,296,297,
      5,29,0,0,297,299,3,68,34,3,298,292,1,0,0,0,298,295,1,0,0,0,299,302,
      1,0,0,0,300,298,1,0,0,0,300,301,1,0,0,0,301,69,1,0,0,0,302,300,1,0,
      0,0,24,73,86,93,96,107,116,119,131,138,145,160,177,194,199,213,235,
      237,243,261,265,279,290,298,300
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

class MathFunctionExpressionContext extends ParserRuleContext {
  FunctionInvocationContext? functionInvocation() => getRuleContext<FunctionInvocationContext>(0);
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

class StringLengthExpressionContext extends ParserRuleContext {
  FunctionInvocationContext? functionInvocation() => getRuleContext<FunctionInvocationContext>(0);
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
  FunctionInvocationContext? functionInvocation() => getRuleContext<FunctionInvocationContext>(0);
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

