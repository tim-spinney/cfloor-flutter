grammar CFloor7 ;

import CFloor6 ;

parameter: type Identifier ;

parameterList: (parameter (',' parameter)*)? ;

returnType: type | 'void' ;

functionDefinition: returnType Identifier '(' parameterList ')' block ;

expression: mathExpression | readFunctionExpression | StringLiteral | booleanExpression | arrayInitializer | arrayLiteral | functionInvocation ;

functionInvocation: Identifier '(' (variableAccessor (',' variableAccessor)*)? ')' ;

mathOperand: Number | variableAccessor | ( '(' mathExpression ')') | mathFunctionExpression | stringLengthExpression | functionInvocation ;

booleanOperand: BooleanLiteral | variableAccessor | '(' booleanExpression ')' | functionInvocation ;

functionInvocationStatement: functionInvocation ';' ;

returnStatement: 'return' expression? ';' ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop | forLoop | functionInvocationStatement | returnStatement ;

program: functionDefinition+ EOF ;