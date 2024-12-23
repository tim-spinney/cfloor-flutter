/* Introduces arrays and for loops as a way to iterate over arrays. */
grammar CFloor6 ;

import CFloor5 ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop | forLoop ;

forLoop: 'for' '(' typedAssignment ';' booleanExpression ';' assignment ')' block ;

type: primitive | 'array<' primitive '>' ;

expression: mathExpression | readFunctionExpression | StringLiteral | booleanExpression | arrayInitializer | arrayLiteral ;

arrayInitializer: 'array<' primitive '>' '[' Number ']' ;

arrayLiteral: '{' '}' | '{' arrayLiteralElement (',' arrayLiteralElement)* '}' ;

arrayLiteralElement: Number | StringLiteral | BooleanLiteral | arrayLiteral | arrayInitializer;

assignment: variableAccessor '=' expression ;

variableAccessor: Identifier ('[' mathExpression ']')?;

typedAssignment: type assignment ;
