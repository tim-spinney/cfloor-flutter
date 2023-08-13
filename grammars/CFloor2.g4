grammar CFloor2 ;

import CFloor1 ;

Number: [-]?[0-9]+ | [-]?[0-9]* '.' [0-9]+? ;

type: 'int' | 'float' ;

mathOperand: Number | variableAccessor | ( '(' mathExpression ')') | mathFunctionExpression ;

mathFunctionExpression: ('floor' | 'ceil' | 'round' | 'sqrt' | 'sin' | 'cos' | 'tan') '(' mathExpression ')' ;

readFunctionExpression: 'readInt()' | 'readFloat()' ;
