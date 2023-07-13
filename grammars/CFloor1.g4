grammar CFloor1 ;

MathOperator: '+' | '-' | '*' | '/' | '%' ;

Identifier: [a-z][a-z_]* ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+ ;

Type: 'int' ;

program: statement+ EOF;

declAssignStatement: Type assignment ';' ;

assignStatement: assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

assignment: Identifier '=' (mathExpression | readFunctionExpression) ;

statement: writeStatement | assignStatement | declAssignStatement ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') ;

readFunctionExpression: 'readInt()' ;

