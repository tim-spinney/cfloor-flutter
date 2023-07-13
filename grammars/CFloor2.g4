grammar CFloor2 ;

import CFloor1 ;

Number: [-]?[0-9]+('.' [0-9]+)? ;

Type: 'int' | 'float' ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') | mathFunctionExpression ;

mathFunctionExpression: ('floor' | 'ceil' | 'round') '(' mathExpression ')' ;

readFunctionExpression: 'readInt()' | 'readFloat()' ;
