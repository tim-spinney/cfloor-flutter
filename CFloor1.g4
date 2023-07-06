grammar CFloor1 ;

MathOperator: '+' | '-' | '*' | '/' ;

RealType: 'real' ;

Identifier: [a-z][a-z_]* ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]? [0-9]+ ('.' [0-9]+)? ;

program: statement+ EOF;

mathOperand: Number | Identifier | ( '(' mathExpression ')') ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

readRealExpression: 'readReal()' ;

assignment: Identifier '=' (mathExpression | readRealExpression) ;

assignStatement: assignment ';' ;

type: RealType ;

declAssignStatement: type assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

statement: writeStatement | assignStatement | declAssignStatement ;
