grammar CFloor1 ;

MathOperator: '+' | '-' | '*' | '/' | '%' ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+ ;

Identifier: [a-z][a-z_]* ;

program: statement+ EOF;

statement: declAssignStatement | assignStatement | writeStatement ;

declAssignStatement: type assignment ';' ;

assignStatement: assignment ';' ;

writeStatement: 'write' '(' (variableAccessor | Number | StringLiteral) ')' ';' ;

Primitive: 'int' ;

/* non-terminal to support overriding with arrays in later levels */
type: Primitive ;

assignment: Identifier '=' expression ;

expression: mathExpression | readFunctionExpression ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

mathOperand: Number | variableAccessor | ( '(' mathExpression ')') ;

variableAccessor: Identifier ;

readFunctionExpression: 'read_int()' ;

