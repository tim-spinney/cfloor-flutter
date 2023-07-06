// Generated from src/main/antlr/com.times6.cfloor1/CFloor1.g4 by ANTLR 4.13.0
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';


class CFloor1Lexer extends Lexer {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.0', RuntimeMetaData.VERSION);

  static final List<DFA> _decisionToDFA = List.generate(
        _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int
    TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, TOKEN_T__4 = 5, 
    TOKEN_T__5 = 6, TOKEN_MathOperator = 7, TOKEN_RealType = 8, TOKEN_Identifier = 9, 
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
    'T__0', 'T__1', 'T__2', 'T__3', 'T__4', 'T__5', 'MathOperator', 'RealType', 
    'Identifier', 'StringLiteral', 'WS', 'Number'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'('", "')'", "'readReal()'", "'='", "';'", "'write'", null, 
      "'real'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, "MathOperator", "RealType", 
      "Identifier", "StringLiteral", "WS", "Number"
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
      4,0,12,96,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,
      7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,1,0,1,0,1,1,1,1,1,
      2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,
      1,5,1,5,1,5,1,5,1,6,1,6,1,7,1,7,1,7,1,7,1,7,1,8,1,8,5,8,60,8,8,10,
      8,12,8,63,9,8,1,9,1,9,5,9,67,8,9,10,9,12,9,70,9,9,1,9,1,9,1,10,4,10,
      75,8,10,11,10,12,10,76,1,10,1,10,1,11,3,11,82,8,11,1,11,4,11,85,8,
      11,11,11,12,11,86,1,11,1,11,4,11,91,8,11,11,11,12,11,92,3,11,95,8,
      11,1,68,0,12,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,
      12,1,0,6,3,0,42,43,45,45,47,47,1,0,97,122,2,0,95,95,97,122,3,0,9,10,
      13,13,32,32,1,0,45,45,1,0,48,57,102,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,
      0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,
      0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,0,1,25,1,0,0,0,
      3,27,1,0,0,0,5,29,1,0,0,0,7,40,1,0,0,0,9,42,1,0,0,0,11,44,1,0,0,0,
      13,50,1,0,0,0,15,52,1,0,0,0,17,57,1,0,0,0,19,64,1,0,0,0,21,74,1,0,
      0,0,23,81,1,0,0,0,25,26,5,40,0,0,26,2,1,0,0,0,27,28,5,41,0,0,28,4,
      1,0,0,0,29,30,5,114,0,0,30,31,5,101,0,0,31,32,5,97,0,0,32,33,5,100,
      0,0,33,34,5,82,0,0,34,35,5,101,0,0,35,36,5,97,0,0,36,37,5,108,0,0,
      37,38,5,40,0,0,38,39,5,41,0,0,39,6,1,0,0,0,40,41,5,61,0,0,41,8,1,0,
      0,0,42,43,5,59,0,0,43,10,1,0,0,0,44,45,5,119,0,0,45,46,5,114,0,0,46,
      47,5,105,0,0,47,48,5,116,0,0,48,49,5,101,0,0,49,12,1,0,0,0,50,51,7,
      0,0,0,51,14,1,0,0,0,52,53,5,114,0,0,53,54,5,101,0,0,54,55,5,97,0,0,
      55,56,5,108,0,0,56,16,1,0,0,0,57,61,7,1,0,0,58,60,7,2,0,0,59,58,1,
      0,0,0,60,63,1,0,0,0,61,59,1,0,0,0,61,62,1,0,0,0,62,18,1,0,0,0,63,61,
      1,0,0,0,64,68,5,34,0,0,65,67,9,0,0,0,66,65,1,0,0,0,67,70,1,0,0,0,68,
      69,1,0,0,0,68,66,1,0,0,0,69,71,1,0,0,0,70,68,1,0,0,0,71,72,5,34,0,
      0,72,20,1,0,0,0,73,75,7,3,0,0,74,73,1,0,0,0,75,76,1,0,0,0,76,74,1,
      0,0,0,76,77,1,0,0,0,77,78,1,0,0,0,78,79,6,10,0,0,79,22,1,0,0,0,80,
      82,7,4,0,0,81,80,1,0,0,0,81,82,1,0,0,0,82,84,1,0,0,0,83,85,7,5,0,0,
      84,83,1,0,0,0,85,86,1,0,0,0,86,84,1,0,0,0,86,87,1,0,0,0,87,94,1,0,
      0,0,88,90,5,46,0,0,89,91,7,5,0,0,90,89,1,0,0,0,91,92,1,0,0,0,92,90,
      1,0,0,0,92,93,1,0,0,0,93,95,1,0,0,0,94,88,1,0,0,0,94,95,1,0,0,0,95,
      24,1,0,0,0,8,0,61,68,76,81,86,92,94,1,6,0,0
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}