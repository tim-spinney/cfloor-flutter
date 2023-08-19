grammar CFloor6 ;

import CFloor5 ;

Primitive: 'int' | 'float' | 'string' | 'bool' ;

type: Primitive | 'array<' Primitive '>' ;

arrayLiteralElement: Number | StringLiteral | BooleanLiteral | arrayLiteral | arrayInitializer;

arrayLiteral: '{' '}' | '{' arrayLiteralElement (',' arrayLiteralElement)* '}' ;

arrayInitializer: 'array<' Primitive '>' '[' Number ']' ;

assignment: variableAccessor '=' (mathExpression | readFunctionExpression | StringLiteral | booleanExpression | arrayInitializer | arrayLiteral) ;

variableAccessor: Identifier ('[' mathExpression ']')?;

typedAssignment: type assignment ;

forLoop: 'for' '(' typedAssignment ';' booleanExpression ';' assignment ')' block ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop | forLoop ;

program: statement* ;