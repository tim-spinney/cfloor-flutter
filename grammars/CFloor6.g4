grammar CFloor6 ;

import CFloor5 ;

Primitive: 'int' | 'float' | 'string' | 'bool' ;

type: Primitive | 'array' '<' Primitive '>' ;

arrayLiteralElement: Number | Identifier | StringLiteral | BooleanLiteral | arrayLiteral ;

arrayLiteral: '{' '}' | '{' arrayLiteralElement (',' arrayLiteralElement)* '}' ;

arrayInitializer: 'array' '<' Primitive '>' '[' Number ']' ;

assignment: variableAccessor '=' (mathExpression | readFunctionExpression | StringLiteral | booleanExpression | arrayInitializer | arrayLiteral) ;

arrayIndexer: Number | mathExpression ;

variableAccessor: Identifier ('[' arrayIndexer ']')?;

typedAssignment: type assignment ;

forLoop: 'for' '(' typedAssignment ';' booleanExpression ';' assignment ')' block ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop | forLoop ;

program: statement* ;