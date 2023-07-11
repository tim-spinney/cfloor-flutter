grammar CFloor2 ;

MathOperator: '+' | '-' | '*' | '/' ;

Type: 'int' | 'float' ;

Identifier: [a-z][a-z_]* ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+('.' [0-9]+)? ;

program: statement+ EOF;

mathOperand: Number | Identifier | ( '(' mathExpression ')') | mathFunctionExpression ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

mathFunctionExpression: ('floor' | 'ceil' | 'round') '(' mathExpression ')' ;

readFunctionCall: 'readInt()' | 'readFloat()' ;

assignment: Identifier '=' (mathExpression | readFunctionCall) ;

assignStatement: assignment ';' ;

declAssignStatement: Type assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

statement: writeStatement | assignStatement | declAssignStatement ;
