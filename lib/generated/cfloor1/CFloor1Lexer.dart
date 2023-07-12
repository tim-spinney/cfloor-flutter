// Generated from CFloor1.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';


class CFloor1Lexer extends Lexer {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);

  static final List<DFA> _decisionToDFA = List.generate(
        _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int
    TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, TOKEN_T__4 = 5, 
    TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_MathOperator = 8, TOKEN_Identifier = 9, 
    TOKEN_StringLiteral = 10, TOKEN_WS = 11, TOKEN_Number = 12;
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
    'T__0', 'T__1', 'T__2', 'T__3', 'T__4', 'T__5', 'T__6', 'MathOperator', 
    'Identifier', 'StringLiteral', 'WS', 'Number'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'readInt()'", "'='", "';'", "'int'", "'write'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, "MathOperator", "Identifier", 
      "StringLiteral", "WS", "Number"
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
      4,0,12,86,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,
      7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,1,0,1,0,1,1,1,1,1,
      2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,1,5,
      1,5,1,6,1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,8,1,8,5,8,58,8,8,10,8,12,8,61,
      9,8,1,9,1,9,5,9,65,8,9,10,9,12,9,68,9,9,1,9,1,9,1,10,4,10,73,8,10,
      11,10,12,10,74,1,10,1,10,1,11,3,11,80,8,11,1,11,4,11,83,8,11,11,11,
      12,11,84,1,66,0,12,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,
      11,23,12,1,0,6,3,0,42,43,45,45,47,47,1,0,97,122,2,0,95,95,97,122,3,
      0,9,10,13,13,32,32,1,0,45,45,1,0,48,57,90,0,1,1,0,0,0,0,3,1,0,0,0,
      0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,
      1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,1,25,1,
      0,0,0,3,27,1,0,0,0,5,29,1,0,0,0,7,39,1,0,0,0,9,41,1,0,0,0,11,43,1,
      0,0,0,13,47,1,0,0,0,15,53,1,0,0,0,17,55,1,0,0,0,19,62,1,0,0,0,21,72,
      1,0,0,0,23,79,1,0,0,0,25,26,5,40,0,0,26,2,1,0,0,0,27,28,5,41,0,0,28,
      4,1,0,0,0,29,30,5,114,0,0,30,31,5,101,0,0,31,32,5,97,0,0,32,33,5,100,
      0,0,33,34,5,73,0,0,34,35,5,110,0,0,35,36,5,116,0,0,36,37,5,40,0,0,
      37,38,5,41,0,0,38,6,1,0,0,0,39,40,5,61,0,0,40,8,1,0,0,0,41,42,5,59,
      0,0,42,10,1,0,0,0,43,44,5,105,0,0,44,45,5,110,0,0,45,46,5,116,0,0,
      46,12,1,0,0,0,47,48,5,119,0,0,48,49,5,114,0,0,49,50,5,105,0,0,50,51,
      5,116,0,0,51,52,5,101,0,0,52,14,1,0,0,0,53,54,7,0,0,0,54,16,1,0,0,
      0,55,59,7,1,0,0,56,58,7,2,0,0,57,56,1,0,0,0,58,61,1,0,0,0,59,57,1,
      0,0,0,59,60,1,0,0,0,60,18,1,0,0,0,61,59,1,0,0,0,62,66,5,34,0,0,63,
      65,9,0,0,0,64,63,1,0,0,0,65,68,1,0,0,0,66,67,1,0,0,0,66,64,1,0,0,0,
      67,69,1,0,0,0,68,66,1,0,0,0,69,70,5,34,0,0,70,20,1,0,0,0,71,73,7,3,
      0,0,72,71,1,0,0,0,73,74,1,0,0,0,74,72,1,0,0,0,74,75,1,0,0,0,75,76,
      1,0,0,0,76,77,6,10,0,0,77,22,1,0,0,0,78,80,7,4,0,0,79,78,1,0,0,0,79,
      80,1,0,0,0,80,82,1,0,0,0,81,83,7,5,0,0,82,81,1,0,0,0,83,84,1,0,0,0,
      84,82,1,0,0,0,84,85,1,0,0,0,85,24,1,0,0,0,6,0,59,66,74,79,84,1,6,0,
      0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}