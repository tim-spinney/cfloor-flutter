grammar CFloor1 ;

MathOperator: '+' | '-' | '*' | '/' | '%' ;

type: 'int' ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+ ;

Identifier: [a-z][a-z_]* ;

program: statement+ EOF;

declAssignStatement: type assignment ';' ;

assignStatement: assignment ';' ;

writeStatement: 'write' '(' (variableAccessor | Number | StringLiteral) ')' ';' ;

variableAccessor: Identifier ;

mathOperand: Number | variableAccessor | ( '(' mathExpression ')') ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

assignment: Identifier '=' (mathExpression | readFunctionExpression) ;

statement: writeStatement | assignStatement | declAssignStatement ;

readFunctionExpression: 'readInt()' ;

