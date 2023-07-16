grammar CFloor1 ;

MathOperator: '+' | '-' | '*' | '/' | '%' ;

Type: 'int' ;

Identifier: [a-z][a-z_]* ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+ ;

program: statement+ EOF;

declAssignStatement: Type assignment ';' ;

assignStatement: assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

assignment: Identifier '=' (mathExpression | readFunctionExpression) ;

statement: writeStatement | assignStatement | declAssignStatement ;

readFunctionExpression: 'readInt()' ;

