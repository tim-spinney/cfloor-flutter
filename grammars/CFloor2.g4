grammar CFloor2 ;

import common ;

Number: [-]?[0-9]+('.' [0-9]+)? ;

Type: 'int' | 'float' ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') | mathFunctionExpression ;

mathFunctionExpression: ('floor' | 'ceil' | 'round') '(' mathExpression ')' ;

readFunctionCall: 'readInt()' | 'readFloat()' ;
