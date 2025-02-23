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
          RULE_variableAccessor = 18, RULE_typedAssignment = 19, RULE_whileLoop = 20, 
          RULE_primitive = 21, RULE_booleanExpression = 22, RULE_block = 23, 
          RULE_ifStatement = 24, RULE_elseBlock = 25, RULE_ifBlock = 26, 
          RULE_stringLengthExpression = 27, RULE_readFunctionExpression = 28, 
          RULE_mathFunctionExpression = 29, RULE_declAssignStatement = 30, 
          RULE_assignStatement = 31, RULE_writeStatement = 32, RULE_mathExpression = 33;
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
                   TOKEN_MathOperator = 39, TOKEN_StringLiteral = 40, TOKEN_WS = 41, 
                   TOKEN_Identifier = 42;

  @override
  final List<String> ruleNames = [
    'program', 'functionDefinition', 'returnType', 'parameterList', 'parameter', 
    'expression', 'functionInvocation', 'statement', 'functionInvocationStatement', 
    'returnStatement', 'mathOperand', 'booleanOperand', 'forLoop', 'type', 
    'arrayInitializer', 'arrayLiteral', 'arrayLiteralElement', 'assignment', 
    'variableAccessor', 'typedAssignment', 'whileLoop', 'primitive', 'booleanExpression', 
    'block', 'ifStatement', 'elseBlock', 'ifBlock', 'stringLengthExpression', 
    'readFunctionExpression', 'mathFunctionExpression', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
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
      "Comparator", "Number", "MathOperator", "StringLiteral", "WS", "Identifier"
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
      state = 69; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 68;
        functionDefinition();
        state = 71; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 983304) != 0));
      state = 73;
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
      state = 75;
      returnType();
      state = 76;
      match(TOKEN_Identifier);
      state = 77;
      match(TOKEN_T__0);
      state = 78;
      parameterList();
      state = 79;
      match(TOKEN_T__1);
      state = 80;
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
      state = 84;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__7:
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
        enterOuterAlt(_localctx, 1);
        state = 82;
        type();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 2);
        state = 83;
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
      state = 94;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 983296) != 0)) {
        state = 86;
        parameter();
        state = 91;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 87;
          match(TOKEN_T__3);
          state = 88;
          parameter();
          state = 93;
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
      state = 96;
      type();
      state = 97;
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
      state = 106;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 99;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 100;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 101;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 102;
        booleanExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 103;
        arrayInitializer();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 104;
        arrayLiteral();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 105;
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
      state = 108;
      match(TOKEN_Identifier);
      state = 109;
      match(TOKEN_T__0);
      state = 118;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_Identifier) {
        state = 110;
        variableAccessor();
        state = 115;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 111;
          match(TOKEN_T__3);
          state = 112;
          variableAccessor();
          state = 117;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
      }

      state = 120;
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

  FunctionInvocationStatementContext functionInvocationStatement() {
    dynamic _localctx = FunctionInvocationStatementContext(context, state);
    enterRule(_localctx, 16, RULE_functionInvocationStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 132;
      functionInvocation();
      state = 133;
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
      state = 135;
      match(TOKEN_T__5);
      state = 137;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 5884101005570) != 0)) {
        state = 136;
        expression();
      }

      state = 139;
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
      state = 150;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 9, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 141;
        match(TOKEN_Number);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 142;
        variableAccessor();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 143;
        match(TOKEN_T__0);
        state = 144;
        mathExpression();
        state = 145;
        match(TOKEN_T__1);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 147;
        mathFunctionExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 148;
        stringLengthExpression();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 149;
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
      state = 159;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 10, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 152;
        match(TOKEN_BooleanLiteral);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 153;
        variableAccessor();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 154;
        match(TOKEN_T__0);
        state = 155;
        booleanExpression();
        state = 156;
        match(TOKEN_T__1);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 158;
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
      state = 161;
      match(TOKEN_T__6);
      state = 162;
      match(TOKEN_T__0);
      state = 163;
      typedAssignment();
      state = 164;
      match(TOKEN_T__4);
      state = 165;
      booleanExpression();
      state = 166;
      match(TOKEN_T__4);
      state = 167;
      assignment();
      state = 168;
      match(TOKEN_T__1);
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

  TypeContext type() {
    dynamic _localctx = TypeContext(context, state);
    enterRule(_localctx, 26, RULE_type);
    try {
      state = 176;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__15:
      case TOKEN_T__16:
      case TOKEN_T__17:
      case TOKEN_T__18:
        enterOuterAlt(_localctx, 1);
        state = 171;
        primitive();
        break;
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 2);
        state = 172;
        match(TOKEN_T__7);
        state = 173;
        primitive();
        state = 174;
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
      state = 178;
      match(TOKEN_T__7);
      state = 179;
      primitive();
      state = 180;
      match(TOKEN_T__8);
      state = 181;
      match(TOKEN_T__9);
      state = 182;
      match(TOKEN_Number);
      state = 183;
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
      state = 198;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 185;
        match(TOKEN_T__11);
        state = 186;
        match(TOKEN_T__12);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 187;
        match(TOKEN_T__11);
        state = 188;
        arrayLiteralElement();
        state = 193;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 189;
          match(TOKEN_T__3);
          state = 190;
          arrayLiteralElement();
          state = 195;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 196;
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
    try {
      state = 205;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 200;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 2);
        state = 201;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 3);
        state = 202;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__11:
        enterOuterAlt(_localctx, 4);
        state = 203;
        arrayLiteral();
        break;
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 5);
        state = 204;
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
    enterRule(_localctx, 34, RULE_assignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 207;
      variableAccessor();
      state = 208;
      match(TOKEN_T__13);
      state = 209;
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
    enterRule(_localctx, 36, RULE_variableAccessor);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 211;
      match(TOKEN_Identifier);
      state = 216;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__9) {
        state = 212;
        match(TOKEN_T__9);
        state = 213;
        mathExpression();
        state = 214;
        match(TOKEN_T__10);
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
    enterRule(_localctx, 38, RULE_typedAssignment);
    try {
      enterOuterAlt(_localctx, 1);
      state = 218;
      type();
      state = 219;
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
    enterRule(_localctx, 40, RULE_whileLoop);
    try {
      enterOuterAlt(_localctx, 1);
      state = 221;
      match(TOKEN_T__14);
      state = 222;
      match(TOKEN_T__0);
      state = 223;
      booleanExpression();
      state = 224;
      match(TOKEN_T__1);
      state = 225;
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
    enterRule(_localctx, 42, RULE_primitive);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 227;
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
    enterRule(_localctx, 44, RULE_booleanExpression);
    int _la;
    try {
      state = 240;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 17, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 229;
        match(TOKEN_UnaryBooleanOperator);
        state = 230;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 231;
        mathOperand();
        state = 232;
        match(TOKEN_Comparator);
        state = 233;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 235;
        booleanOperand();
        state = 238;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 236;
          match(TOKEN_BinaryBooleanOperator);
          state = 237;
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
    enterRule(_localctx, 46, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 242;
      match(TOKEN_T__11);
      state = 244; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 243;
        statement();
        state = 246; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4406638510528) != 0));
      state = 248;
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
    enterRule(_localctx, 48, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 250;
      match(TOKEN_T__19);
      state = 251;
      match(TOKEN_T__0);
      state = 252;
      booleanExpression();
      state = 253;
      match(TOKEN_T__1);
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

  ElseBlockContext elseBlock() {
    dynamic _localctx = ElseBlockContext(context, state);
    enterRule(_localctx, 50, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 256;
      match(TOKEN_T__20);
      state = 257;
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
    enterRule(_localctx, 52, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 259;
      ifStatement();
      state = 264;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 19, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 260;
          match(TOKEN_T__20);
          state = 261;
          ifStatement(); 
        }
        state = 266;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 19, context);
      }
      state = 268;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__20) {
        state = 267;
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
    enterRule(_localctx, 54, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 270;
      match(TOKEN_T__21);
      state = 271;
      variableAccessor();
      state = 272;
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
    enterRule(_localctx, 56, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 274;
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
    enterRule(_localctx, 58, RULE_mathFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 276;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 8522825728) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 277;
      match(TOKEN_T__0);
      state = 278;
      mathExpression();
      state = 279;
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
    enterRule(_localctx, 60, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 281;
      type();
      state = 282;
      assignment();
      state = 283;
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
    enterRule(_localctx, 62, RULE_assignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 285;
      assignment();
      state = 286;
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
    enterRule(_localctx, 64, RULE_writeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 288;
      match(TOKEN_T__32);
      state = 289;
      match(TOKEN_T__0);
      state = 293;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 290;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 291;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 292;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 295;
      match(TOKEN_T__1);
      state = 296;
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
    enterRule(_localctx, 66, RULE_mathExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 298;
      mathOperand();
      state = 301;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 299;
        match(TOKEN_MathOperator);
        state = 300;
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
      4,1,42,304,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,1,0,
      4,0,70,8,0,11,0,12,0,71,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,
      2,3,2,85,8,2,1,3,1,3,1,3,5,3,90,8,3,10,3,12,3,93,9,3,3,3,95,8,3,1,
      4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,107,8,5,1,6,1,6,1,6,1,6,
      1,6,5,6,114,8,6,10,6,12,6,117,9,6,3,6,119,8,6,1,6,1,6,1,7,1,7,1,7,
      1,7,1,7,1,7,1,7,1,7,3,7,131,8,7,1,8,1,8,1,8,1,9,1,9,3,9,138,8,9,1,
      9,1,9,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,3,10,151,8,10,1,
      11,1,11,1,11,1,11,1,11,1,11,1,11,3,11,160,8,11,1,12,1,12,1,12,1,12,
      1,12,1,12,1,12,1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,13,3,13,177,8,
      13,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,15,1,15,1,15,1,15,1,15,1,15,
      5,15,192,8,15,10,15,12,15,195,9,15,1,15,1,15,3,15,199,8,15,1,16,1,
      16,1,16,1,16,1,16,3,16,206,8,16,1,17,1,17,1,17,1,17,1,18,1,18,1,18,
      1,18,1,18,3,18,217,8,18,1,19,1,19,1,19,1,20,1,20,1,20,1,20,1,20,1,
      20,1,21,1,21,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,1,22,3,22,239,
      8,22,3,22,241,8,22,1,23,1,23,4,23,245,8,23,11,23,12,23,246,1,23,1,
      23,1,24,1,24,1,24,1,24,1,24,1,24,1,25,1,25,1,25,1,26,1,26,1,26,5,26,
      263,8,26,10,26,12,26,266,9,26,1,26,3,26,269,8,26,1,27,1,27,1,27,1,
      27,1,28,1,28,1,29,1,29,1,29,1,29,1,29,1,30,1,30,1,30,1,30,1,31,1,31,
      1,31,1,32,1,32,1,32,1,32,1,32,3,32,294,8,32,1,32,1,32,1,32,1,33,1,
      33,1,33,3,33,302,8,33,1,33,0,0,34,0,2,4,6,8,10,12,14,16,18,20,22,24,
      26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,0,3,
      1,0,16,19,1,0,23,25,1,0,26,32,314,0,69,1,0,0,0,2,75,1,0,0,0,4,84,1,
      0,0,0,6,94,1,0,0,0,8,96,1,0,0,0,10,106,1,0,0,0,12,108,1,0,0,0,14,130,
      1,0,0,0,16,132,1,0,0,0,18,135,1,0,0,0,20,150,1,0,0,0,22,159,1,0,0,
      0,24,161,1,0,0,0,26,176,1,0,0,0,28,178,1,0,0,0,30,198,1,0,0,0,32,205,
      1,0,0,0,34,207,1,0,0,0,36,211,1,0,0,0,38,218,1,0,0,0,40,221,1,0,0,
      0,42,227,1,0,0,0,44,240,1,0,0,0,46,242,1,0,0,0,48,250,1,0,0,0,50,256,
      1,0,0,0,52,259,1,0,0,0,54,270,1,0,0,0,56,274,1,0,0,0,58,276,1,0,0,
      0,60,281,1,0,0,0,62,285,1,0,0,0,64,288,1,0,0,0,66,298,1,0,0,0,68,70,
      3,2,1,0,69,68,1,0,0,0,70,71,1,0,0,0,71,69,1,0,0,0,71,72,1,0,0,0,72,
      73,1,0,0,0,73,74,5,0,0,1,74,1,1,0,0,0,75,76,3,4,2,0,76,77,5,42,0,0,
      77,78,5,1,0,0,78,79,3,6,3,0,79,80,5,2,0,0,80,81,3,46,23,0,81,3,1,0,
      0,0,82,85,3,26,13,0,83,85,5,3,0,0,84,82,1,0,0,0,84,83,1,0,0,0,85,5,
      1,0,0,0,86,91,3,8,4,0,87,88,5,4,0,0,88,90,3,8,4,0,89,87,1,0,0,0,90,
      93,1,0,0,0,91,89,1,0,0,0,91,92,1,0,0,0,92,95,1,0,0,0,93,91,1,0,0,0,
      94,86,1,0,0,0,94,95,1,0,0,0,95,7,1,0,0,0,96,97,3,26,13,0,97,98,5,42,
      0,0,98,9,1,0,0,0,99,107,3,66,33,0,100,107,3,56,28,0,101,107,5,40,0,
      0,102,107,3,44,22,0,103,107,3,28,14,0,104,107,3,30,15,0,105,107,3,
      12,6,0,106,99,1,0,0,0,106,100,1,0,0,0,106,101,1,0,0,0,106,102,1,0,
      0,0,106,103,1,0,0,0,106,104,1,0,0,0,106,105,1,0,0,0,107,11,1,0,0,0,
      108,109,5,42,0,0,109,118,5,1,0,0,110,115,3,36,18,0,111,112,5,4,0,0,
      112,114,3,36,18,0,113,111,1,0,0,0,114,117,1,0,0,0,115,113,1,0,0,0,
      115,116,1,0,0,0,116,119,1,0,0,0,117,115,1,0,0,0,118,110,1,0,0,0,118,
      119,1,0,0,0,119,120,1,0,0,0,120,121,5,2,0,0,121,13,1,0,0,0,122,131,
      3,64,32,0,123,131,3,62,31,0,124,131,3,60,30,0,125,131,3,52,26,0,126,
      131,3,40,20,0,127,131,3,24,12,0,128,131,3,16,8,0,129,131,3,18,9,0,
      130,122,1,0,0,0,130,123,1,0,0,0,130,124,1,0,0,0,130,125,1,0,0,0,130,
      126,1,0,0,0,130,127,1,0,0,0,130,128,1,0,0,0,130,129,1,0,0,0,131,15,
      1,0,0,0,132,133,3,12,6,0,133,134,5,5,0,0,134,17,1,0,0,0,135,137,5,
      6,0,0,136,138,3,10,5,0,137,136,1,0,0,0,137,138,1,0,0,0,138,139,1,0,
      0,0,139,140,5,5,0,0,140,19,1,0,0,0,141,151,5,38,0,0,142,151,3,36,18,
      0,143,144,5,1,0,0,144,145,3,66,33,0,145,146,5,2,0,0,146,151,1,0,0,
      0,147,151,3,58,29,0,148,151,3,54,27,0,149,151,3,12,6,0,150,141,1,0,
      0,0,150,142,1,0,0,0,150,143,1,0,0,0,150,147,1,0,0,0,150,148,1,0,0,
      0,150,149,1,0,0,0,151,21,1,0,0,0,152,160,5,36,0,0,153,160,3,36,18,
      0,154,155,5,1,0,0,155,156,3,44,22,0,156,157,5,2,0,0,157,160,1,0,0,
      0,158,160,3,12,6,0,159,152,1,0,0,0,159,153,1,0,0,0,159,154,1,0,0,0,
      159,158,1,0,0,0,160,23,1,0,0,0,161,162,5,7,0,0,162,163,5,1,0,0,163,
      164,3,38,19,0,164,165,5,5,0,0,165,166,3,44,22,0,166,167,5,5,0,0,167,
      168,3,34,17,0,168,169,5,2,0,0,169,170,3,46,23,0,170,25,1,0,0,0,171,
      177,3,42,21,0,172,173,5,8,0,0,173,174,3,42,21,0,174,175,5,9,0,0,175,
      177,1,0,0,0,176,171,1,0,0,0,176,172,1,0,0,0,177,27,1,0,0,0,178,179,
      5,8,0,0,179,180,3,42,21,0,180,181,5,9,0,0,181,182,5,10,0,0,182,183,
      5,38,0,0,183,184,5,11,0,0,184,29,1,0,0,0,185,186,5,12,0,0,186,199,
      5,13,0,0,187,188,5,12,0,0,188,193,3,32,16,0,189,190,5,4,0,0,190,192,
      3,32,16,0,191,189,1,0,0,0,192,195,1,0,0,0,193,191,1,0,0,0,193,194,
      1,0,0,0,194,196,1,0,0,0,195,193,1,0,0,0,196,197,5,13,0,0,197,199,1,
      0,0,0,198,185,1,0,0,0,198,187,1,0,0,0,199,31,1,0,0,0,200,206,5,38,
      0,0,201,206,5,40,0,0,202,206,5,36,0,0,203,206,3,30,15,0,204,206,3,
      28,14,0,205,200,1,0,0,0,205,201,1,0,0,0,205,202,1,0,0,0,205,203,1,
      0,0,0,205,204,1,0,0,0,206,33,1,0,0,0,207,208,3,36,18,0,208,209,5,14,
      0,0,209,210,3,10,5,0,210,35,1,0,0,0,211,216,5,42,0,0,212,213,5,10,
      0,0,213,214,3,66,33,0,214,215,5,11,0,0,215,217,1,0,0,0,216,212,1,0,
      0,0,216,217,1,0,0,0,217,37,1,0,0,0,218,219,3,26,13,0,219,220,3,34,
      17,0,220,39,1,0,0,0,221,222,5,15,0,0,222,223,5,1,0,0,223,224,3,44,
      22,0,224,225,5,2,0,0,225,226,3,46,23,0,226,41,1,0,0,0,227,228,7,0,
      0,0,228,43,1,0,0,0,229,230,5,35,0,0,230,241,3,22,11,0,231,232,3,20,
      10,0,232,233,5,37,0,0,233,234,3,20,10,0,234,241,1,0,0,0,235,238,3,
      22,11,0,236,237,5,34,0,0,237,239,3,22,11,0,238,236,1,0,0,0,238,239,
      1,0,0,0,239,241,1,0,0,0,240,229,1,0,0,0,240,231,1,0,0,0,240,235,1,
      0,0,0,241,45,1,0,0,0,242,244,5,12,0,0,243,245,3,14,7,0,244,243,1,0,
      0,0,245,246,1,0,0,0,246,244,1,0,0,0,246,247,1,0,0,0,247,248,1,0,0,
      0,248,249,5,13,0,0,249,47,1,0,0,0,250,251,5,20,0,0,251,252,5,1,0,0,
      252,253,3,44,22,0,253,254,5,2,0,0,254,255,3,46,23,0,255,49,1,0,0,0,
      256,257,5,21,0,0,257,258,3,46,23,0,258,51,1,0,0,0,259,264,3,48,24,
      0,260,261,5,21,0,0,261,263,3,48,24,0,262,260,1,0,0,0,263,266,1,0,0,
      0,264,262,1,0,0,0,264,265,1,0,0,0,265,268,1,0,0,0,266,264,1,0,0,0,
      267,269,3,50,25,0,268,267,1,0,0,0,268,269,1,0,0,0,269,53,1,0,0,0,270,
      271,5,22,0,0,271,272,3,36,18,0,272,273,5,2,0,0,273,55,1,0,0,0,274,
      275,7,1,0,0,275,57,1,0,0,0,276,277,7,2,0,0,277,278,5,1,0,0,278,279,
      3,66,33,0,279,280,5,2,0,0,280,59,1,0,0,0,281,282,3,26,13,0,282,283,
      3,34,17,0,283,284,5,5,0,0,284,61,1,0,0,0,285,286,3,34,17,0,286,287,
      5,5,0,0,287,63,1,0,0,0,288,289,5,33,0,0,289,293,5,1,0,0,290,294,3,
      36,18,0,291,294,5,38,0,0,292,294,5,40,0,0,293,290,1,0,0,0,293,291,
      1,0,0,0,293,292,1,0,0,0,294,295,1,0,0,0,295,296,5,2,0,0,296,297,5,
      5,0,0,297,65,1,0,0,0,298,301,3,20,10,0,299,300,5,39,0,0,300,302,3,
      20,10,0,301,299,1,0,0,0,301,302,1,0,0,0,302,67,1,0,0,0,23,71,84,91,
      94,106,115,118,130,137,150,159,176,193,198,205,216,238,240,246,264,
      268,293,301
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
  MathExpressionContext? mathExpression() => getRuleContext<MathExpressionContext>(0);
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

