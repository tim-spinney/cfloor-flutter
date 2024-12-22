// Generated from grammars/CFloor1.g4 by ANTLR 4.13.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';


class CFloor1Lexer extends Lexer {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);

  static final List<DFA> _decisionToDFA = List.generate(
        _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int
    TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, TOKEN_T__4 = 5, 
    TOKEN_T__5 = 6, TOKEN_MathOperator = 7, TOKEN_StringLiteral = 8, TOKEN_WS = 9, 
    TOKEN_Number = 10, TOKEN_Identifier = 11, TOKEN_Primitive = 12;
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
    'T__0', 'T__1', 'T__2', 'T__3', 'T__4', 'T__5', 'MathOperator', 'StringLiteral', 
    'WS', 'Number', 'Identifier', 'Primitive'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "';'", "'write'", "'('", "')'", "'='", "'read_int()'", null, 
      null, null, null, null, "'int'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, "MathOperator", "StringLiteral", 
      "WS", "Number", "Identifier", "Primitive"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }


  CFloor1Lexer(CharStream input) : super(input) {
    interpreter = LexerATNSimulator(_ATN, _decisionToDFA, _sharedContextCache, recog: this);
  }

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  String get grammarFileName => 'CFloor1.g4';

  @override
  ATN getATN() { return _ATN; }

  static const List<int> _serializedATN = [
      4,0,12,87,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,
      7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,1,0,1,0,1,1,1,1,1,
      1,1,1,1,1,1,1,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,5,1,6,1,6,1,7,1,7,5,7,55,8,7,10,7,12,7,58,9,7,1,7,1,
      7,1,8,4,8,63,8,8,11,8,12,8,64,1,8,1,8,1,9,3,9,70,8,9,1,9,4,9,73,8,
      9,11,9,12,9,74,1,10,1,10,5,10,79,8,10,10,10,12,10,82,9,10,1,11,1,11,
      1,11,1,11,1,56,0,12,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,
      21,11,23,12,1,0,6,4,0,37,37,42,43,45,45,47,47,3,0,9,10,13,13,32,32,
      1,0,45,45,1,0,48,57,1,0,97,122,2,0,95,95,97,122,91,0,1,1,0,0,0,0,3,
      1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,
      0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,
      0,1,25,1,0,0,0,3,27,1,0,0,0,5,33,1,0,0,0,7,35,1,0,0,0,9,37,1,0,0,0,
      11,39,1,0,0,0,13,50,1,0,0,0,15,52,1,0,0,0,17,62,1,0,0,0,19,69,1,0,
      0,0,21,76,1,0,0,0,23,83,1,0,0,0,25,26,5,59,0,0,26,2,1,0,0,0,27,28,
      5,119,0,0,28,29,5,114,0,0,29,30,5,105,0,0,30,31,5,116,0,0,31,32,5,
      101,0,0,32,4,1,0,0,0,33,34,5,40,0,0,34,6,1,0,0,0,35,36,5,41,0,0,36,
      8,1,0,0,0,37,38,5,61,0,0,38,10,1,0,0,0,39,40,5,114,0,0,40,41,5,101,
      0,0,41,42,5,97,0,0,42,43,5,100,0,0,43,44,5,95,0,0,44,45,5,105,0,0,
      45,46,5,110,0,0,46,47,5,116,0,0,47,48,5,40,0,0,48,49,5,41,0,0,49,12,
      1,0,0,0,50,51,7,0,0,0,51,14,1,0,0,0,52,56,5,34,0,0,53,55,9,0,0,0,54,
      53,1,0,0,0,55,58,1,0,0,0,56,57,1,0,0,0,56,54,1,0,0,0,57,59,1,0,0,0,
      58,56,1,0,0,0,59,60,5,34,0,0,60,16,1,0,0,0,61,63,7,1,0,0,62,61,1,0,
      0,0,63,64,1,0,0,0,64,62,1,0,0,0,64,65,1,0,0,0,65,66,1,0,0,0,66,67,
      6,8,0,0,67,18,1,0,0,0,68,70,7,2,0,0,69,68,1,0,0,0,69,70,1,0,0,0,70,
      72,1,0,0,0,71,73,7,3,0,0,72,71,1,0,0,0,73,74,1,0,0,0,74,72,1,0,0,0,
      74,75,1,0,0,0,75,20,1,0,0,0,76,80,7,4,0,0,77,79,7,5,0,0,78,77,1,0,
      0,0,79,82,1,0,0,0,80,78,1,0,0,0,80,81,1,0,0,0,81,22,1,0,0,0,82,80,
      1,0,0,0,83,84,5,105,0,0,84,85,5,110,0,0,85,86,5,116,0,0,86,24,1,0,
      0,0,6,0,56,64,69,74,80,1,6,0,0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}