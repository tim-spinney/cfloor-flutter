grammar CFloor3 ;

import CFloor2 ;

Type: 'int' | 'float' | 'string' ;


stringLengthExpression: 'length(' Identifier ')' ;

assignment: Identifier '=' (mathExpression | readFunctionExpression | StringLiteral) ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') | mathFunctionExpression | stringLengthExpression ;

readFunctionExpression: 'readInt()' | 'readFloat()' | 'readString()' ;

