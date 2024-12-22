grammar CFloor7 ;

import CFloor6 ;

program: functionDefinition+ EOF ;

functionDefinition: returnType Identifier '(' parameterList ')' block ;

returnType: type | 'void' ;

parameterList: (parameter (',' parameter)*)? ;

parameter: type Identifier ;

expression: mathExpression | readFunctionExpression | StringLiteral | booleanExpression | arrayInitializer | arrayLiteral | functionInvocation ;

functionInvocation: Identifier '(' (variableAccessor (',' variableAccessor)*)? ')' ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop | forLoop | functionInvocationStatement | returnStatement ;

functionInvocationStatement: functionInvocation ';' ;

returnStatement: 'return' expression? ';' ;

/* TODO: ditch mathFunctionExpression and stringLengthExpression at this level, treat as built-in functions */
mathOperand: Number | variableAccessor | ( '(' mathExpression ')') | mathFunctionExpression | stringLengthExpression | functionInvocation ;

booleanOperand: BooleanLiteral | variableAccessor | '(' booleanExpression ')' | functionInvocation ;
