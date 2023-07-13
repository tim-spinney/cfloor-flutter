// Generated from grammars/CFloor1.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';


class CFloor1Lexer extends Lexer {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);

  static final List<DFA> _decisionToDFA = List.generate(
        _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int
    TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, TOKEN_T__4 = 5, 
    TOKEN_T__5 = 6, TOKEN_MathOperator = 7, TOKEN_Identifier = 8, TOKEN_StringLiteral = 9, 
    TOKEN_WS = 10, TOKEN_Number = 11, TOKEN_Type = 12;
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
    'T__0', 'T__1', 'T__2', 'T__3', 'T__4', 'T__5', 'MathOperator', 'Identifier', 
    'StringLiteral', 'WS', 'Number', 'Type'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "';'", "'write'", "'('", "')'", "'='", "'readInt()'", null, 
      null, null, null, null, "'int'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, "MathOperator", "Identifier", 
      "StringLiteral", "WS", "Number", "Type"
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
      1,1,1,1,1,1,1,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,5,1,5,
      1,5,1,5,1,5,1,6,1,6,1,7,1,7,5,7,54,8,7,10,7,12,7,57,9,7,1,8,1,8,5,
      8,61,8,8,10,8,12,8,64,9,8,1,8,1,8,1,9,4,9,69,8,9,11,9,12,9,70,1,9,
      1,9,1,10,3,10,76,8,10,1,10,4,10,79,8,10,11,10,12,10,80,1,11,1,11,1,
      11,1,11,1,62,0,12,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,
      11,23,12,1,0,6,4,0,37,37,42,43,45,45,47,47,1,0,97,122,2,0,95,95,97,
      122,3,0,9,10,13,13,32,32,1,0,45,45,1,0,48,57,90,0,1,1,0,0,0,0,3,1,
      0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,
      0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,
      1,25,1,0,0,0,3,27,1,0,0,0,5,33,1,0,0,0,7,35,1,0,0,0,9,37,1,0,0,0,11,
      39,1,0,0,0,13,49,1,0,0,0,15,51,1,0,0,0,17,58,1,0,0,0,19,68,1,0,0,0,
      21,75,1,0,0,0,23,82,1,0,0,0,25,26,5,59,0,0,26,2,1,0,0,0,27,28,5,119,
      0,0,28,29,5,114,0,0,29,30,5,105,0,0,30,31,5,116,0,0,31,32,5,101,0,
      0,32,4,1,0,0,0,33,34,5,40,0,0,34,6,1,0,0,0,35,36,5,41,0,0,36,8,1,0,
      0,0,37,38,5,61,0,0,38,10,1,0,0,0,39,40,5,114,0,0,40,41,5,101,0,0,41,
      42,5,97,0,0,42,43,5,100,0,0,43,44,5,73,0,0,44,45,5,110,0,0,45,46,5,
      116,0,0,46,47,5,40,0,0,47,48,5,41,0,0,48,12,1,0,0,0,49,50,7,0,0,0,
      50,14,1,0,0,0,51,55,7,1,0,0,52,54,7,2,0,0,53,52,1,0,0,0,54,57,1,0,
      0,0,55,53,1,0,0,0,55,56,1,0,0,0,56,16,1,0,0,0,57,55,1,0,0,0,58,62,
      5,34,0,0,59,61,9,0,0,0,60,59,1,0,0,0,61,64,1,0,0,0,62,63,1,0,0,0,62,
      60,1,0,0,0,63,65,1,0,0,0,64,62,1,0,0,0,65,66,5,34,0,0,66,18,1,0,0,
      0,67,69,7,3,0,0,68,67,1,0,0,0,69,70,1,0,0,0,70,68,1,0,0,0,70,71,1,
      0,0,0,71,72,1,0,0,0,72,73,6,9,0,0,73,20,1,0,0,0,74,76,7,4,0,0,75,74,
      1,0,0,0,75,76,1,0,0,0,76,78,1,0,0,0,77,79,7,5,0,0,78,77,1,0,0,0,79,
      80,1,0,0,0,80,78,1,0,0,0,80,81,1,0,0,0,81,22,1,0,0,0,82,83,5,105,0,
      0,83,84,5,110,0,0,84,85,5,116,0,0,85,24,1,0,0,0,6,0,55,62,70,75,80,
      1,6,0,0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}