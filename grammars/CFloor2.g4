grammar CFloor2 ;

import CFloor1 ;

IntLiteral: [-]?[0-9]+ ;

Number: IntLiteral | IntLiteral? '.' [0-9]+? ;

Type: 'int' | 'float' ;

mathOperand: Number | Identifier | ( '(' mathExpression ')') | mathFunctionExpression ;

mathFunctionExpression: ('floor' | 'ceil' | 'round' | 'sqrt' | 'sin' | 'cos' | 'tan') '(' mathExpression ')' ;

readFunctionExpression: 'readInt()' | 'readFloat()' ;
