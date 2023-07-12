grammar CFloor1 ;

MathOperator: '+' | '-' | '*' | '/' ;

Identifier: [a-z][a-z_]* ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+ ;

program: statement+ EOF;

mathOperand: Number | Identifier | ( '(' mathExpression ')') ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

readFunctionCall: 'readInt()' ;

assignment: Identifier '=' (mathExpression | readFunctionCall) ;

assignStatement: assignment ';' ;

declAssignStatement: 'int' assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

statement: writeStatement | assignStatement | declAssignStatement ;
