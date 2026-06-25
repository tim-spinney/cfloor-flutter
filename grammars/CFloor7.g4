grammar CFloor7 ;

import CFloor6 ;

program: functionDefinition+ EOF ;

functionDefinition: returnType Identifier '(' parameterList ')' block ;

returnType: type | 'void' ;

parameterList: (parameter (',' parameter)*)? ;

parameter: type Identifier ;

expression: mathExpression | StringLiteral | booleanExpression | arrayInitializer | arrayLiteral | functionInvocation ;

functionInvocation: Identifier '(' (variableAccessor (',' variableAccessor)*)? ')' ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop | forLoop | functionInvocationStatement | returnStatement ;

functionInvocationStatement: functionInvocation ';' ;

returnStatement: 'return' expression? ';' ;

mathOperand: Number | variableAccessor | functionInvocation ;

/* Hack: these expressions are no longer reachable from the rest of the grammar starting at this
   level but we need to re-define them so they no longer have inline tokens. Without this the names
   of built-in functions from lower levels won't be recognized as Identifier tokens for functionInvocation.
*/
mathFunctionExpression: functionInvocation;
stringLengthExpression: functionInvocation;
readFunctionExpression: functionInvocation;

booleanOperand: BooleanLiteral | variableAccessor | '(' booleanExpression ')' | functionInvocation ;
