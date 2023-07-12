grammar CFloor1 ;

import common ;

Number: [-]?[0-9]+ ;

Type: 'int' ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') ;

readFunctionCall: 'readInt()' ;

