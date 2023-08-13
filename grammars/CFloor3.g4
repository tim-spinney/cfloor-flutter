grammar CFloor3 ;

import CFloor2 ;

type: 'int' | 'float' | 'string' ;

stringLengthExpression: 'length(' variableAccessor ')' ;

assignment: Identifier '=' (mathExpression | readFunctionExpression | StringLiteral) ;

mathOperand: Number | variableAccessor | ( '(' mathExpression ')') | mathFunctionExpression | stringLengthExpression ;

readFunctionExpression: 'readInt()' | 'readFloat()' | 'readString()' ;

