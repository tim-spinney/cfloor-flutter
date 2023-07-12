grammar common ;

MathOperator: '+' | '-' | '*' | '/' | '%' ;

Identifier: [a-z][a-z_]* ;

StringLiteral: '"' .*? '"' ;

WS: [ \t\r\n]+ -> skip ;

program: statement+ EOF;

declAssignStatement: Type assignment ';' ;

assignStatement: assignment ';' ;

writeStatement: 'write' '(' (Identifier | Number | StringLiteral) ')' ';' ;

mathExpression: mathOperand (MathOperator mathOperand)? ;

assignment: Identifier '=' (mathExpression | readFunctionCall) ;

statement: writeStatement | assignStatement | declAssignStatement ;
