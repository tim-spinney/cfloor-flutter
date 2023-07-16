grammar CFloor1 ;

MathOperator: '+' | '-' | '*' | '/' | '%' ;

Type: 'int' ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+ ;

Identifier: [a-z][a-z_]* ;

program: statement+ EOF;

declAssignStatement: Type assignment ';' ;

assignStatement: assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

assignment: Identifier '=' (mathExpression | readFunctionExpression) ;

statement: writeStatement | assignStatement | declAssignStatement ;

readFunctionExpression: 'readInt()' ;

