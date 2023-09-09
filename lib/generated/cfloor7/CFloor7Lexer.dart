// Generated from grammars/CFloor7.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';


class CFloor7Lexer extends Lexer {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.1', RuntimeMetaData.VERSION);

  static final List<DFA> _decisionToDFA = List.generate(
        _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int
    TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, TOKEN_T__4 = 5, 
    TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, TOKEN_T__8 = 9, TOKEN_T__9 = 10, 
    TOKEN_T__10 = 11, TOKEN_T__11 = 12, TOKEN_T__12 = 13, TOKEN_T__13 = 14, 
    TOKEN_T__14 = 15, TOKEN_T__15 = 16, TOKEN_T__16 = 17, TOKEN_T__17 = 18, 
    TOKEN_T__18 = 19, TOKEN_T__19 = 20, TOKEN_T__20 = 21, TOKEN_T__21 = 22, 
    TOKEN_T__22 = 23, TOKEN_T__23 = 24, TOKEN_T__24 = 25, TOKEN_T__25 = 26, 
    TOKEN_T__26 = 27, TOKEN_T__27 = 28, TOKEN_T__28 = 29, TOKEN_Primitive = 30, 
    TOKEN_BinaryBooleanOperator = 31, TOKEN_UnaryBooleanOperator = 32, TOKEN_BooleanLiteral = 33, 
    TOKEN_Comparator = 34, TOKEN_Number = 35, TOKEN_MathOperator = 36, TOKEN_StringLiteral = 37, 
    TOKEN_WS = 38, TOKEN_Identifier = 39;
  @override
  final List<String> channelNames = [
    'DEFAULT_TOKEN_CHANNEL', 'HIDDEN'
  ];

  @override
  final List<String> modeNames = [
    'DEFAULT_MODE'
  ];

  @override
  final List<String> ruleNames = [
    'T__0', 'T__1', 'T__2', 'T__3', 'T__4', 'T__5', 'T__6', 'T__7', 'T__8', 
    'T__9', 'T__10', 'T__11', 'T__12', 'T__13', 'T__14', 'T__15', 'T__16', 
    'T__17', 'T__18', 'T__19', 'T__20', 'T__21', 'T__22', 'T__23', 'T__24', 
    'T__25', 'T__26', 'T__27', 'T__28', 'Primitive', 'BinaryBooleanOperator', 
    'UnaryBooleanOperator', 'BooleanLiteral', 'Comparator', 'Number', 'MathOperator', 
    'StringLiteral', 'WS', 'Identifier'
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


  CFloor7Lexer(CharStream input) : super(input) {
    interpreter = LexerATNSimulator(_ATN, _decisionToDFA, _sharedContextCache, recog: this);
  }

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  String get grammarFileName => 'CFloor7.g4';

  @override
  ATN getATN() { return _ATN; }

  static const List<int> _serializedATN = [
      4,0,39,326,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,
      6,7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,
      13,2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,
      7,20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,
      27,7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,
      2,34,7,34,2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,1,0,1,0,1,1,1,1,
      1,1,1,1,1,1,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,1,
      6,1,6,1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,8,1,8,1,9,1,9,1,10,1,10,1,11,1,
      11,1,12,1,12,1,13,1,13,1,13,1,13,1,14,1,14,1,14,1,14,1,14,1,14,1,15,
      1,15,1,15,1,16,1,16,1,16,1,16,1,16,1,17,1,17,1,17,1,17,1,17,1,17,1,
      17,1,17,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,19,
      1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,19,1,20,1,
      20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,20,1,21,
      1,21,1,21,1,21,1,21,1,21,1,22,1,22,1,22,1,22,1,22,1,23,1,23,1,23,1,
      23,1,23,1,23,1,24,1,24,1,24,1,24,1,24,1,25,1,25,1,25,1,25,1,26,1,26,
      1,26,1,26,1,27,1,27,1,27,1,27,1,28,1,28,1,28,1,28,1,28,1,28,1,29,1,
      29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,1,29,
      1,29,1,29,1,29,3,29,241,8,29,1,30,1,30,1,30,1,30,1,30,3,30,248,8,30,
      1,31,1,31,1,31,1,31,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,3,
      32,263,8,32,1,33,1,33,1,33,1,33,1,33,1,33,1,33,1,33,1,33,1,33,3,33,
      275,8,33,1,34,3,34,278,8,34,1,34,4,34,281,8,34,11,34,12,34,282,1,34,
      3,34,286,8,34,1,34,5,34,289,8,34,10,34,12,34,292,9,34,1,34,1,34,4,
      34,296,8,34,11,34,12,34,297,3,34,300,8,34,1,35,1,35,1,36,1,36,5,36,
      306,8,36,10,36,12,36,309,9,36,1,36,1,36,1,37,4,37,314,8,37,11,37,12,
      37,315,1,37,1,37,1,38,1,38,5,38,322,8,38,10,38,12,38,325,9,38,2,297,
      307,0,39,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,12,
      25,13,27,14,29,15,31,16,33,17,35,18,37,19,39,20,41,21,43,22,45,23,
      47,24,49,25,51,26,53,27,55,28,57,29,59,30,61,31,63,32,65,33,67,34,
      69,35,71,36,73,37,75,38,77,39,1,0,6,1,0,45,45,1,0,48,57,4,0,37,37,
      42,43,45,45,47,47,3,0,9,10,13,13,32,32,1,0,97,122,2,0,95,95,97,122,
      344,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,
      11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,
      1,0,0,0,0,23,1,0,0,0,0,25,1,0,0,0,0,27,1,0,0,0,0,29,1,0,0,0,0,31,1,
      0,0,0,0,33,1,0,0,0,0,35,1,0,0,0,0,37,1,0,0,0,0,39,1,0,0,0,0,41,1,0,
      0,0,0,43,1,0,0,0,0,45,1,0,0,0,0,47,1,0,0,0,0,49,1,0,0,0,0,51,1,0,0,
      0,0,53,1,0,0,0,0,55,1,0,0,0,0,57,1,0,0,0,0,59,1,0,0,0,0,61,1,0,0,0,
      0,63,1,0,0,0,0,65,1,0,0,0,0,67,1,0,0,0,0,69,1,0,0,0,0,71,1,0,0,0,0,
      73,1,0,0,0,0,75,1,0,0,0,0,77,1,0,0,0,1,79,1,0,0,0,3,81,1,0,0,0,5,86,
      1,0,0,0,7,88,1,0,0,0,9,90,1,0,0,0,11,92,1,0,0,0,13,99,1,0,0,0,15,106,
      1,0,0,0,17,108,1,0,0,0,19,110,1,0,0,0,21,112,1,0,0,0,23,114,1,0,0,
      0,25,116,1,0,0,0,27,118,1,0,0,0,29,122,1,0,0,0,31,128,1,0,0,0,33,131,
      1,0,0,0,35,136,1,0,0,0,37,144,1,0,0,0,39,155,1,0,0,0,41,168,1,0,0,
      0,43,182,1,0,0,0,45,188,1,0,0,0,47,193,1,0,0,0,49,199,1,0,0,0,51,204,
      1,0,0,0,53,208,1,0,0,0,55,212,1,0,0,0,57,216,1,0,0,0,59,240,1,0,0,
      0,61,247,1,0,0,0,63,249,1,0,0,0,65,262,1,0,0,0,67,274,1,0,0,0,69,299,
      1,0,0,0,71,301,1,0,0,0,73,303,1,0,0,0,75,313,1,0,0,0,77,319,1,0,0,
      0,79,80,5,44,0,0,80,2,1,0,0,0,81,82,5,118,0,0,82,83,5,111,0,0,83,84,
      5,105,0,0,84,85,5,100,0,0,85,4,1,0,0,0,86,87,5,40,0,0,87,6,1,0,0,0,
      88,89,5,41,0,0,89,8,1,0,0,0,90,91,5,59,0,0,91,10,1,0,0,0,92,93,5,114,
      0,0,93,94,5,101,0,0,94,95,5,116,0,0,95,96,5,117,0,0,96,97,5,114,0,
      0,97,98,5,110,0,0,98,12,1,0,0,0,99,100,5,97,0,0,100,101,5,114,0,0,
      101,102,5,114,0,0,102,103,5,97,0,0,103,104,5,121,0,0,104,105,5,60,
      0,0,105,14,1,0,0,0,106,107,5,62,0,0,107,16,1,0,0,0,108,109,5,123,0,
      0,109,18,1,0,0,0,110,111,5,125,0,0,111,20,1,0,0,0,112,113,5,91,0,0,
      113,22,1,0,0,0,114,115,5,93,0,0,115,24,1,0,0,0,116,117,5,61,0,0,117,
      26,1,0,0,0,118,119,5,102,0,0,119,120,5,111,0,0,120,121,5,114,0,0,121,
      28,1,0,0,0,122,123,5,119,0,0,123,124,5,104,0,0,124,125,5,105,0,0,125,
      126,5,108,0,0,126,127,5,101,0,0,127,30,1,0,0,0,128,129,5,105,0,0,129,
      130,5,102,0,0,130,32,1,0,0,0,131,132,5,101,0,0,132,133,5,108,0,0,133,
      134,5,115,0,0,134,135,5,101,0,0,135,34,1,0,0,0,136,137,5,108,0,0,137,
      138,5,101,0,0,138,139,5,110,0,0,139,140,5,103,0,0,140,141,5,116,0,
      0,141,142,5,104,0,0,142,143,5,40,0,0,143,36,1,0,0,0,144,145,5,114,
      0,0,145,146,5,101,0,0,146,147,5,97,0,0,147,148,5,100,0,0,148,149,5,
      95,0,0,149,150,5,105,0,0,150,151,5,110,0,0,151,152,5,116,0,0,152,153,
      5,40,0,0,153,154,5,41,0,0,154,38,1,0,0,0,155,156,5,114,0,0,156,157,
      5,101,0,0,157,158,5,97,0,0,158,159,5,100,0,0,159,160,5,95,0,0,160,
      161,5,102,0,0,161,162,5,108,0,0,162,163,5,111,0,0,163,164,5,97,0,0,
      164,165,5,116,0,0,165,166,5,40,0,0,166,167,5,41,0,0,167,40,1,0,0,0,
      168,169,5,114,0,0,169,170,5,101,0,0,170,171,5,97,0,0,171,172,5,100,
      0,0,172,173,5,95,0,0,173,174,5,115,0,0,174,175,5,116,0,0,175,176,5,
      114,0,0,176,177,5,105,0,0,177,178,5,110,0,0,178,179,5,103,0,0,179,
      180,5,40,0,0,180,181,5,41,0,0,181,42,1,0,0,0,182,183,5,102,0,0,183,
      184,5,108,0,0,184,185,5,111,0,0,185,186,5,111,0,0,186,187,5,114,0,
      0,187,44,1,0,0,0,188,189,5,99,0,0,189,190,5,101,0,0,190,191,5,105,
      0,0,191,192,5,108,0,0,192,46,1,0,0,0,193,194,5,114,0,0,194,195,5,111,
      0,0,195,196,5,117,0,0,196,197,5,110,0,0,197,198,5,100,0,0,198,48,1,
      0,0,0,199,200,5,115,0,0,200,201,5,113,0,0,201,202,5,114,0,0,202,203,
      5,116,0,0,203,50,1,0,0,0,204,205,5,115,0,0,205,206,5,105,0,0,206,207,
      5,110,0,0,207,52,1,0,0,0,208,209,5,99,0,0,209,210,5,111,0,0,210,211,
      5,115,0,0,211,54,1,0,0,0,212,213,5,116,0,0,213,214,5,97,0,0,214,215,
      5,110,0,0,215,56,1,0,0,0,216,217,5,119,0,0,217,218,5,114,0,0,218,219,
      5,105,0,0,219,220,5,116,0,0,220,221,5,101,0,0,221,58,1,0,0,0,222,223,
      5,105,0,0,223,224,5,110,0,0,224,241,5,116,0,0,225,226,5,102,0,0,226,
      227,5,108,0,0,227,228,5,111,0,0,228,229,5,97,0,0,229,241,5,116,0,0,
      230,231,5,115,0,0,231,232,5,116,0,0,232,233,5,114,0,0,233,234,5,105,
      0,0,234,235,5,110,0,0,235,241,5,103,0,0,236,237,5,98,0,0,237,238,5,
      111,0,0,238,239,5,111,0,0,239,241,5,108,0,0,240,222,1,0,0,0,240,225,
      1,0,0,0,240,230,1,0,0,0,240,236,1,0,0,0,241,60,1,0,0,0,242,243,5,97,
      0,0,243,244,5,110,0,0,244,248,5,100,0,0,245,246,5,111,0,0,246,248,
      5,114,0,0,247,242,1,0,0,0,247,245,1,0,0,0,248,62,1,0,0,0,249,250,5,
      110,0,0,250,251,5,111,0,0,251,252,5,116,0,0,252,64,1,0,0,0,253,254,
      5,116,0,0,254,255,5,114,0,0,255,256,5,117,0,0,256,263,5,101,0,0,257,
      258,5,102,0,0,258,259,5,97,0,0,259,260,5,108,0,0,260,261,5,115,0,0,
      261,263,5,101,0,0,262,253,1,0,0,0,262,257,1,0,0,0,263,66,1,0,0,0,264,
      265,5,61,0,0,265,275,5,61,0,0,266,267,5,33,0,0,267,275,5,61,0,0,268,
      275,5,60,0,0,269,270,5,60,0,0,270,275,5,61,0,0,271,275,5,62,0,0,272,
      273,5,62,0,0,273,275,5,61,0,0,274,264,1,0,0,0,274,266,1,0,0,0,274,
      268,1,0,0,0,274,269,1,0,0,0,274,271,1,0,0,0,274,272,1,0,0,0,275,68,
      1,0,0,0,276,278,7,0,0,0,277,276,1,0,0,0,277,278,1,0,0,0,278,280,1,
      0,0,0,279,281,7,1,0,0,280,279,1,0,0,0,281,282,1,0,0,0,282,280,1,0,
      0,0,282,283,1,0,0,0,283,300,1,0,0,0,284,286,7,0,0,0,285,284,1,0,0,
      0,285,286,1,0,0,0,286,290,1,0,0,0,287,289,7,1,0,0,288,287,1,0,0,0,
      289,292,1,0,0,0,290,288,1,0,0,0,290,291,1,0,0,0,291,293,1,0,0,0,292,
      290,1,0,0,0,293,295,5,46,0,0,294,296,7,1,0,0,295,294,1,0,0,0,296,297,
      1,0,0,0,297,298,1,0,0,0,297,295,1,0,0,0,298,300,1,0,0,0,299,277,1,
      0,0,0,299,285,1,0,0,0,300,70,1,0,0,0,301,302,7,2,0,0,302,72,1,0,0,
      0,303,307,5,34,0,0,304,306,9,0,0,0,305,304,1,0,0,0,306,309,1,0,0,0,
      307,308,1,0,0,0,307,305,1,0,0,0,308,310,1,0,0,0,309,307,1,0,0,0,310,
      311,5,34,0,0,311,74,1,0,0,0,312,314,7,3,0,0,313,312,1,0,0,0,314,315,
      1,0,0,0,315,313,1,0,0,0,315,316,1,0,0,0,316,317,1,0,0,0,317,318,6,
      37,0,0,318,76,1,0,0,0,319,323,7,4,0,0,320,322,7,5,0,0,321,320,1,0,
      0,0,322,325,1,0,0,0,323,321,1,0,0,0,323,324,1,0,0,0,324,78,1,0,0,0,
      325,323,1,0,0,0,14,0,240,247,262,274,277,282,285,290,297,299,307,315,
      323,1,6,0,0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}