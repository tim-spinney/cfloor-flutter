grammar CFloor2 ;

MathOperator: '+' | '-' | '*' | '/' ;

RealType: 'real' ;

IntType: 'int' ;

Identifier: [a-z][a-z_]* ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

Number: [-]?[0-9]+('.' [0-9]+)? ;

program: statement+ EOF;

mathOperand: Number | Identifier | ( '(' mathExpression ')') | mathFunctionExpression ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

readRealExpression: 'readReal()' ;

readIntExpression: 'readInt()' ;

mathFunctionExpression: ('floor' | 'ceil' | 'round') '(' mathExpression ')' ;

readExpression: readRealExpression | readIntExpression ;

assignment: Identifier '=' (mathExpression | readExpression) ;

assignStatement: assignment ';' ;

type: RealType | IntType ;

declAssignStatement: type assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

statement: writeStatement | assignStatement | declAssignStatement ;
