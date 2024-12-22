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
          RULE_booleanExpression = 21, RULE_block = 22, RULE_ifStatement = 23, 
          RULE_elseBlock = 24, RULE_ifBlock = 25, RULE_stringLengthExpression = 26, 
          RULE_readFunctionExpression = 27, RULE_mathFunctionExpression = 28, 
          RULE_declAssignStatement = 29, RULE_assignStatement = 30, RULE_writeStatement = 31, 
          RULE_mathExpression = 32;
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
                   TOKEN_T__27 = 28, TOKEN_T__28 = 29, TOKEN_BinaryBooleanOperator = 30, 
                   TOKEN_UnaryBooleanOperator = 31, TOKEN_BooleanLiteral = 32, 
                   TOKEN_Comparator = 33, TOKEN_Primitive = 34, TOKEN_Number = 35, 
                   TOKEN_MathOperator = 36, TOKEN_StringLiteral = 37, TOKEN_WS = 38, 
                   TOKEN_Identifier = 39;

  @override
  final List<String> ruleNames = [
    'program', 'functionDefinition', 'returnType', 'parameterList', 'parameter', 
    'expression', 'functionInvocation', 'statement', 'functionInvocationStatement', 
    'returnStatement', 'mathOperand', 'booleanOperand', 'forLoop', 'type', 
    'arrayInitializer', 'arrayLiteral', 'arrayLiteralElement', 'assignment', 
    'variableAccessor', 'typedAssignment', 'whileLoop', 'booleanExpression', 
    'block', 'ifStatement', 'elseBlock', 'ifBlock', 'stringLengthExpression', 
    'readFunctionExpression', 'mathFunctionExpression', 'declAssignStatement', 
    'assignStatement', 'writeStatement', 'mathExpression'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'void'", "','", "';'", "'return'", "'for'", "'array<'", 
      "'>'", "'['", "']'", "'{'", "'}'", "'='", "'while'", "'if'", "'else'", 
      "'length('", "'read_int()'", "'read_float()'", "'read_string()'", 
      "'floor'", "'ceil'", "'round'", "'sqrt'", "'sin'", "'cos'", "'tan'", 
      "'write'", null, "'not'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, null, null, null, null, null, null, "BinaryBooleanOperator", 
      "UnaryBooleanOperator", "BooleanLiteral", "Comparator", "Primitive", 
      "Number", "MathOperator", "StringLiteral", "WS", "Identifier"
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
      state = 67; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 66;
        functionDefinition();
        state = 69; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 17179869448) != 0));
      state = 71;
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
      state = 73;
      returnType();
      state = 74;
      match(TOKEN_Identifier);
      state = 75;
      match(TOKEN_T__0);
      state = 76;
      parameterList();
      state = 77;
      match(TOKEN_T__1);
      state = 78;
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
      state = 82;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_T__7:
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 80;
        type();
        break;
      case TOKEN_T__2:
        enterOuterAlt(_localctx, 2);
        state = 81;
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
      state = 92;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__7 || _la == TOKEN_Primitive) {
        state = 84;
        parameter();
        state = 89;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 85;
          match(TOKEN_T__3);
          state = 86;
          parameter();
          state = 91;
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
      state = 94;
      type();
      state = 95;
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
      state = 104;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 97;
        mathExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 98;
        readFunctionExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 99;
        match(TOKEN_StringLiteral);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 100;
        booleanExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 101;
        arrayInitializer();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 102;
        arrayLiteral();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 103;
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
      state = 106;
      match(TOKEN_Identifier);
      state = 107;
      match(TOKEN_T__0);
      state = 116;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_Identifier) {
        state = 108;
        variableAccessor();
        state = 113;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 109;
          match(TOKEN_T__3);
          state = 110;
          variableAccessor();
          state = 115;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
      }

      state = 118;
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
      state = 128;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 120;
        writeStatement();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 121;
        assignStatement();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 122;
        declAssignStatement();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 123;
        ifBlock();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 124;
        whileLoop();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 125;
        forLoop();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 126;
        functionInvocationStatement();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 127;
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
      state = 130;
      functionInvocation();
      state = 131;
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
      state = 133;
      match(TOKEN_T__5);
      state = 135;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 728533569794) != 0)) {
        state = 134;
        expression();
      }

      state = 137;
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
        state = 139;
        match(TOKEN_Number);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 140;
        variableAccessor();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 141;
        match(TOKEN_T__0);
        state = 142;
        mathExpression();
        state = 143;
        match(TOKEN_T__1);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 145;
        mathFunctionExpression();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 146;
        stringLengthExpression();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
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
      state = 173;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Primitive:
        enterOuterAlt(_localctx, 1);
        state = 169;
        match(TOKEN_Primitive);
        break;
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 2);
        state = 170;
        match(TOKEN_T__7);
        state = 171;
        match(TOKEN_Primitive);
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
      state = 175;
      match(TOKEN_T__7);
      state = 176;
      match(TOKEN_Primitive);
      state = 177;
      match(TOKEN_T__8);
      state = 178;
      match(TOKEN_T__9);
      state = 179;
      match(TOKEN_Number);
      state = 180;
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
      state = 195;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 13, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 182;
        match(TOKEN_T__11);
        state = 183;
        match(TOKEN_T__12);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 184;
        match(TOKEN_T__11);
        state = 185;
        arrayLiteralElement();
        state = 190;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_T__3) {
          state = 186;
          match(TOKEN_T__3);
          state = 187;
          arrayLiteralElement();
          state = 192;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 193;
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
      state = 202;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Number:
        enterOuterAlt(_localctx, 1);
        state = 197;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 2);
        state = 198;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_BooleanLiteral:
        enterOuterAlt(_localctx, 3);
        state = 199;
        match(TOKEN_BooleanLiteral);
        break;
      case TOKEN_T__11:
        enterOuterAlt(_localctx, 4);
        state = 200;
        arrayLiteral();
        break;
      case TOKEN_T__7:
        enterOuterAlt(_localctx, 5);
        state = 201;
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
      state = 204;
      variableAccessor();
      state = 205;
      match(TOKEN_T__13);
      state = 206;
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
      state = 208;
      match(TOKEN_Identifier);
      state = 213;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__9) {
        state = 209;
        match(TOKEN_T__9);
        state = 210;
        mathExpression();
        state = 211;
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
    enterRule(_localctx, 40, RULE_whileLoop);
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

  BooleanExpressionContext booleanExpression() {
    dynamic _localctx = BooleanExpressionContext(context, state);
    enterRule(_localctx, 42, RULE_booleanExpression);
    int _la;
    try {
      state = 235;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 17, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 224;
        match(TOKEN_UnaryBooleanOperator);
        state = 225;
        booleanOperand();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 226;
        mathOperand();
        state = 227;
        match(TOKEN_Comparator);
        state = 228;
        mathOperand();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 230;
        booleanOperand();
        state = 233;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_BinaryBooleanOperator) {
          state = 231;
          match(TOKEN_BinaryBooleanOperator);
          state = 232;
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
    enterRule(_localctx, 44, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 237;
      match(TOKEN_T__11);
      state = 239; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 238;
        statement();
        state = 241; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 567472652736) != 0));
      state = 243;
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
    enterRule(_localctx, 46, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 245;
      match(TOKEN_T__15);
      state = 246;
      match(TOKEN_T__0);
      state = 247;
      booleanExpression();
      state = 248;
      match(TOKEN_T__1);
      state = 249;
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
    enterRule(_localctx, 48, RULE_elseBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 251;
      match(TOKEN_T__16);
      state = 252;
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
    enterRule(_localctx, 50, RULE_ifBlock);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 254;
      ifStatement();
      state = 259;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 19, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 255;
          match(TOKEN_T__16);
          state = 256;
          ifStatement(); 
        }
        state = 261;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 19, context);
      }
      state = 263;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_T__16) {
        state = 262;
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
    enterRule(_localctx, 52, RULE_stringLengthExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 265;
      match(TOKEN_T__17);
      state = 266;
      variableAccessor();
      state = 267;
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
    enterRule(_localctx, 54, RULE_readFunctionExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 269;
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
      state = 271;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 532676608) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 272;
      match(TOKEN_T__0);
      state = 273;
      mathExpression();
      state = 274;
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
    enterRule(_localctx, 58, RULE_declAssignStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 276;
      type();
      state = 277;
      assignment();
      state = 278;
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
      state = 280;
      assignment();
      state = 281;
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
      state = 283;
      match(TOKEN_T__28);
      state = 284;
      match(TOKEN_T__0);
      state = 288;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_Identifier:
        state = 285;
        variableAccessor();
        break;
      case TOKEN_Number:
        state = 286;
        match(TOKEN_Number);
        break;
      case TOKEN_StringLiteral:
        state = 287;
        match(TOKEN_StringLiteral);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 290;
      match(TOKEN_T__1);
      state = 291;
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
      state = 293;
      mathOperand();
      state = 296;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_MathOperator) {
        state = 294;
        match(TOKEN_MathOperator);
        state = 295;
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
      4,1,39,299,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,
      27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,1,0,4,0,68,8,
      0,11,0,12,0,69,1,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,2,3,2,83,
      8,2,1,3,1,3,1,3,5,3,88,8,3,10,3,12,3,91,9,3,3,3,93,8,3,1,4,1,4,1,4,
      1,5,1,5,1,5,1,5,1,5,1,5,1,5,3,5,105,8,5,1,6,1,6,1,6,1,6,1,6,5,6,112,
      8,6,10,6,12,6,115,9,6,3,6,117,8,6,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,7,
      1,7,1,7,3,7,129,8,7,1,8,1,8,1,8,1,9,1,9,3,9,136,8,9,1,9,1,9,1,10,1,
      10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,3,10,149,8,10,1,11,1,11,1,11,
      1,11,1,11,1,11,1,11,3,11,158,8,11,1,12,1,12,1,12,1,12,1,12,1,12,1,
      12,1,12,1,12,1,12,1,13,1,13,1,13,1,13,3,13,174,8,13,1,14,1,14,1,14,
      1,14,1,14,1,14,1,14,1,15,1,15,1,15,1,15,1,15,1,15,5,15,189,8,15,10,
      15,12,15,192,9,15,1,15,1,15,3,15,196,8,15,1,16,1,16,1,16,1,16,1,16,
      3,16,203,8,16,1,17,1,17,1,17,1,17,1,18,1,18,1,18,1,18,1,18,3,18,214,
      8,18,1,19,1,19,1,19,1,20,1,20,1,20,1,20,1,20,1,20,1,21,1,21,1,21,1,
      21,1,21,1,21,1,21,1,21,1,21,3,21,234,8,21,3,21,236,8,21,1,22,1,22,
      4,22,240,8,22,11,22,12,22,241,1,22,1,22,1,23,1,23,1,23,1,23,1,23,1,
      23,1,24,1,24,1,24,1,25,1,25,1,25,5,25,258,8,25,10,25,12,25,261,9,25,
      1,25,3,25,264,8,25,1,26,1,26,1,26,1,26,1,27,1,27,1,28,1,28,1,28,1,
      28,1,28,1,29,1,29,1,29,1,29,1,30,1,30,1,30,1,31,1,31,1,31,1,31,1,31,
      3,31,289,8,31,1,31,1,31,1,31,1,32,1,32,1,32,3,32,297,8,32,1,32,0,0,
      33,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,
      46,48,50,52,54,56,58,60,62,64,0,2,1,0,19,21,1,0,22,28,310,0,67,1,0,
      0,0,2,73,1,0,0,0,4,82,1,0,0,0,6,92,1,0,0,0,8,94,1,0,0,0,10,104,1,0,
      0,0,12,106,1,0,0,0,14,128,1,0,0,0,16,130,1,0,0,0,18,133,1,0,0,0,20,
      148,1,0,0,0,22,157,1,0,0,0,24,159,1,0,0,0,26,173,1,0,0,0,28,175,1,
      0,0,0,30,195,1,0,0,0,32,202,1,0,0,0,34,204,1,0,0,0,36,208,1,0,0,0,
      38,215,1,0,0,0,40,218,1,0,0,0,42,235,1,0,0,0,44,237,1,0,0,0,46,245,
      1,0,0,0,48,251,1,0,0,0,50,254,1,0,0,0,52,265,1,0,0,0,54,269,1,0,0,
      0,56,271,1,0,0,0,58,276,1,0,0,0,60,280,1,0,0,0,62,283,1,0,0,0,64,293,
      1,0,0,0,66,68,3,2,1,0,67,66,1,0,0,0,68,69,1,0,0,0,69,67,1,0,0,0,69,
      70,1,0,0,0,70,71,1,0,0,0,71,72,5,0,0,1,72,1,1,0,0,0,73,74,3,4,2,0,
      74,75,5,39,0,0,75,76,5,1,0,0,76,77,3,6,3,0,77,78,5,2,0,0,78,79,3,44,
      22,0,79,3,1,0,0,0,80,83,3,26,13,0,81,83,5,3,0,0,82,80,1,0,0,0,82,81,
      1,0,0,0,83,5,1,0,0,0,84,89,3,8,4,0,85,86,5,4,0,0,86,88,3,8,4,0,87,
      85,1,0,0,0,88,91,1,0,0,0,89,87,1,0,0,0,89,90,1,0,0,0,90,93,1,0,0,0,
      91,89,1,0,0,0,92,84,1,0,0,0,92,93,1,0,0,0,93,7,1,0,0,0,94,95,3,26,
      13,0,95,96,5,39,0,0,96,9,1,0,0,0,97,105,3,64,32,0,98,105,3,54,27,0,
      99,105,5,37,0,0,100,105,3,42,21,0,101,105,3,28,14,0,102,105,3,30,15,
      0,103,105,3,12,6,0,104,97,1,0,0,0,104,98,1,0,0,0,104,99,1,0,0,0,104,
      100,1,0,0,0,104,101,1,0,0,0,104,102,1,0,0,0,104,103,1,0,0,0,105,11,
      1,0,0,0,106,107,5,39,0,0,107,116,5,1,0,0,108,113,3,36,18,0,109,110,
      5,4,0,0,110,112,3,36,18,0,111,109,1,0,0,0,112,115,1,0,0,0,113,111,
      1,0,0,0,113,114,1,0,0,0,114,117,1,0,0,0,115,113,1,0,0,0,116,108,1,
      0,0,0,116,117,1,0,0,0,117,118,1,0,0,0,118,119,5,2,0,0,119,13,1,0,0,
      0,120,129,3,62,31,0,121,129,3,60,30,0,122,129,3,58,29,0,123,129,3,
      50,25,0,124,129,3,40,20,0,125,129,3,24,12,0,126,129,3,16,8,0,127,129,
      3,18,9,0,128,120,1,0,0,0,128,121,1,0,0,0,128,122,1,0,0,0,128,123,1,
      0,0,0,128,124,1,0,0,0,128,125,1,0,0,0,128,126,1,0,0,0,128,127,1,0,
      0,0,129,15,1,0,0,0,130,131,3,12,6,0,131,132,5,5,0,0,132,17,1,0,0,0,
      133,135,5,6,0,0,134,136,3,10,5,0,135,134,1,0,0,0,135,136,1,0,0,0,136,
      137,1,0,0,0,137,138,5,5,0,0,138,19,1,0,0,0,139,149,5,35,0,0,140,149,
      3,36,18,0,141,142,5,1,0,0,142,143,3,64,32,0,143,144,5,2,0,0,144,149,
      1,0,0,0,145,149,3,56,28,0,146,149,3,52,26,0,147,149,3,12,6,0,148,139,
      1,0,0,0,148,140,1,0,0,0,148,141,1,0,0,0,148,145,1,0,0,0,148,146,1,
      0,0,0,148,147,1,0,0,0,149,21,1,0,0,0,150,158,5,32,0,0,151,158,3,36,
      18,0,152,153,5,1,0,0,153,154,3,42,21,0,154,155,5,2,0,0,155,158,1,0,
      0,0,156,158,3,12,6,0,157,150,1,0,0,0,157,151,1,0,0,0,157,152,1,0,0,
      0,157,156,1,0,0,0,158,23,1,0,0,0,159,160,5,7,0,0,160,161,5,1,0,0,161,
      162,3,38,19,0,162,163,5,5,0,0,163,164,3,42,21,0,164,165,5,5,0,0,165,
      166,3,34,17,0,166,167,5,2,0,0,167,168,3,44,22,0,168,25,1,0,0,0,169,
      174,5,34,0,0,170,171,5,8,0,0,171,172,5,34,0,0,172,174,5,9,0,0,173,
      169,1,0,0,0,173,170,1,0,0,0,174,27,1,0,0,0,175,176,5,8,0,0,176,177,
      5,34,0,0,177,178,5,9,0,0,178,179,5,10,0,0,179,180,5,35,0,0,180,181,
      5,11,0,0,181,29,1,0,0,0,182,183,5,12,0,0,183,196,5,13,0,0,184,185,
      5,12,0,0,185,190,3,32,16,0,186,187,5,4,0,0,187,189,3,32,16,0,188,186,
      1,0,0,0,189,192,1,0,0,0,190,188,1,0,0,0,190,191,1,0,0,0,191,193,1,
      0,0,0,192,190,1,0,0,0,193,194,5,13,0,0,194,196,1,0,0,0,195,182,1,0,
      0,0,195,184,1,0,0,0,196,31,1,0,0,0,197,203,5,35,0,0,198,203,5,37,0,
      0,199,203,5,32,0,0,200,203,3,30,15,0,201,203,3,28,14,0,202,197,1,0,
      0,0,202,198,1,0,0,0,202,199,1,0,0,0,202,200,1,0,0,0,202,201,1,0,0,
      0,203,33,1,0,0,0,204,205,3,36,18,0,205,206,5,14,0,0,206,207,3,10,5,
      0,207,35,1,0,0,0,208,213,5,39,0,0,209,210,5,10,0,0,210,211,3,64,32,
      0,211,212,5,11,0,0,212,214,1,0,0,0,213,209,1,0,0,0,213,214,1,0,0,0,
      214,37,1,0,0,0,215,216,3,26,13,0,216,217,3,34,17,0,217,39,1,0,0,0,
      218,219,5,15,0,0,219,220,5,1,0,0,220,221,3,42,21,0,221,222,5,2,0,0,
      222,223,3,44,22,0,223,41,1,0,0,0,224,225,5,31,0,0,225,236,3,22,11,
      0,226,227,3,20,10,0,227,228,5,33,0,0,228,229,3,20,10,0,229,236,1,0,
      0,0,230,233,3,22,11,0,231,232,5,30,0,0,232,234,3,22,11,0,233,231,1,
      0,0,0,233,234,1,0,0,0,234,236,1,0,0,0,235,224,1,0,0,0,235,226,1,0,
      0,0,235,230,1,0,0,0,236,43,1,0,0,0,237,239,5,12,0,0,238,240,3,14,7,
      0,239,238,1,0,0,0,240,241,1,0,0,0,241,239,1,0,0,0,241,242,1,0,0,0,
      242,243,1,0,0,0,243,244,5,13,0,0,244,45,1,0,0,0,245,246,5,16,0,0,246,
      247,5,1,0,0,247,248,3,42,21,0,248,249,5,2,0,0,249,250,3,44,22,0,250,
      47,1,0,0,0,251,252,5,17,0,0,252,253,3,44,22,0,253,49,1,0,0,0,254,259,
      3,46,23,0,255,256,5,17,0,0,256,258,3,46,23,0,257,255,1,0,0,0,258,261,
      1,0,0,0,259,257,1,0,0,0,259,260,1,0,0,0,260,263,1,0,0,0,261,259,1,
      0,0,0,262,264,3,48,24,0,263,262,1,0,0,0,263,264,1,0,0,0,264,51,1,0,
      0,0,265,266,5,18,0,0,266,267,3,36,18,0,267,268,5,2,0,0,268,53,1,0,
      0,0,269,270,7,0,0,0,270,55,1,0,0,0,271,272,7,1,0,0,272,273,5,1,0,0,
      273,274,3,64,32,0,274,275,5,2,0,0,275,57,1,0,0,0,276,277,3,26,13,0,
      277,278,3,34,17,0,278,279,5,5,0,0,279,59,1,0,0,0,280,281,3,34,17,0,
      281,282,5,5,0,0,282,61,1,0,0,0,283,284,5,29,0,0,284,288,5,1,0,0,285,
      289,3,36,18,0,286,289,5,35,0,0,287,289,5,37,0,0,288,285,1,0,0,0,288,
      286,1,0,0,0,288,287,1,0,0,0,289,290,1,0,0,0,290,291,5,2,0,0,291,292,
      5,5,0,0,292,63,1,0,0,0,293,296,3,20,10,0,294,295,5,36,0,0,295,297,
      3,20,10,0,296,294,1,0,0,0,296,297,1,0,0,0,297,65,1,0,0,0,23,69,82,
      89,92,104,113,116,128,135,148,157,173,190,195,202,213,233,235,241,
      259,263,288,296
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

