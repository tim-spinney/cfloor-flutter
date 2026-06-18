grammar CFloor1 ;

MathOperatorPrioMult: '*' | '/' | '%' ;
MathOperatorPrioAdd: '+' | '-' ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+ ;

Identifier: [a-z][a-z_]* ;

program: statement+ EOF;

statement: declAssignStatement | assignStatement | writeStatement ;

declAssignStatement: type assignment ';' ;

assignStatement: assignment ';' ;

writeStatement: 'write' '(' (variableAccessor | Number | StringLiteral) ')' ';' ;

primitive: 'int' ;

/* distinct from 'primitive' to support overriding with arrays in later levels */
type: primitive ;

assignment: Identifier '=' expression ;

expression: mathExpression | readFunctionExpression ;

mathExpression: '(' mathExpression ')'
 | mathExpression MathOperatorPrioMult mathExpression
 | mathExpression MathOperatorPrioAdd mathExpression
 | mathOperand ;

mathOperand: Number | variableAccessor ;

variableAccessor: Identifier ;

readFunctionExpression: 'read_int()' ;

