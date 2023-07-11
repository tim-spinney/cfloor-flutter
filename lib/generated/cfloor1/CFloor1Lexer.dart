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
      null, "'('", "')'", "'readFloat()'", "'='", "';'", "'float'", "'write'"
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
      4,0,12,98,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,
      7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,1,0,1,0,1,1,1,1,1,
      2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,4,1,4,1,5,
      1,5,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,6,1,7,1,7,1,8,1,8,5,8,62,
      8,8,10,8,12,8,65,9,8,1,9,1,9,5,9,69,8,9,10,9,12,9,72,9,9,1,9,1,9,1,
      10,4,10,77,8,10,11,10,12,10,78,1,10,1,10,1,11,3,11,84,8,11,1,11,4,
      11,87,8,11,11,11,12,11,88,1,11,1,11,4,11,93,8,11,11,11,12,11,94,3,
      11,97,8,11,1,70,0,12,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,
      21,11,23,12,1,0,6,3,0,42,43,45,45,47,47,1,0,97,122,2,0,95,95,97,122,
      3,0,9,10,13,13,32,32,1,0,45,45,1,0,48,57,104,0,1,1,0,0,0,0,3,1,0,0,
      0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,
      15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,1,25,
      1,0,0,0,3,27,1,0,0,0,5,29,1,0,0,0,7,41,1,0,0,0,9,43,1,0,0,0,11,45,
      1,0,0,0,13,51,1,0,0,0,15,57,1,0,0,0,17,59,1,0,0,0,19,66,1,0,0,0,21,
      76,1,0,0,0,23,83,1,0,0,0,25,26,5,40,0,0,26,2,1,0,0,0,27,28,5,41,0,
      0,28,4,1,0,0,0,29,30,5,114,0,0,30,31,5,101,0,0,31,32,5,97,0,0,32,33,
      5,100,0,0,33,34,5,70,0,0,34,35,5,108,0,0,35,36,5,111,0,0,36,37,5,97,
      0,0,37,38,5,116,0,0,38,39,5,40,0,0,39,40,5,41,0,0,40,6,1,0,0,0,41,
      42,5,61,0,0,42,8,1,0,0,0,43,44,5,59,0,0,44,10,1,0,0,0,45,46,5,102,
      0,0,46,47,5,108,0,0,47,48,5,111,0,0,48,49,5,97,0,0,49,50,5,116,0,0,
      50,12,1,0,0,0,51,52,5,119,0,0,52,53,5,114,0,0,53,54,5,105,0,0,54,55,
      5,116,0,0,55,56,5,101,0,0,56,14,1,0,0,0,57,58,7,0,0,0,58,16,1,0,0,
      0,59,63,7,1,0,0,60,62,7,2,0,0,61,60,1,0,0,0,62,65,1,0,0,0,63,61,1,
      0,0,0,63,64,1,0,0,0,64,18,1,0,0,0,65,63,1,0,0,0,66,70,5,34,0,0,67,
      69,9,0,0,0,68,67,1,0,0,0,69,72,1,0,0,0,70,71,1,0,0,0,70,68,1,0,0,0,
      71,73,1,0,0,0,72,70,1,0,0,0,73,74,5,34,0,0,74,20,1,0,0,0,75,77,7,3,
      0,0,76,75,1,0,0,0,77,78,1,0,0,0,78,76,1,0,0,0,78,79,1,0,0,0,79,80,
      1,0,0,0,80,81,6,10,0,0,81,22,1,0,0,0,82,84,7,4,0,0,83,82,1,0,0,0,83,
      84,1,0,0,0,84,86,1,0,0,0,85,87,7,5,0,0,86,85,1,0,0,0,87,88,1,0,0,0,
      88,86,1,0,0,0,88,89,1,0,0,0,89,96,1,0,0,0,90,92,5,46,0,0,91,93,7,5,
      0,0,92,91,1,0,0,0,93,94,1,0,0,0,94,92,1,0,0,0,94,95,1,0,0,0,95,97,
      1,0,0,0,96,90,1,0,0,0,96,97,1,0,0,0,97,24,1,0,0,0,8,0,63,70,78,83,
      88,94,96,1,6,0,0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}