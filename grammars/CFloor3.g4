grammar CFloor3 ;

import CFloor2 ;

Type: 'int' | 'float' | 'string' ;


stringFunctionExpression: 'length(' Identifier ')' ;

assignment: Identifier '=' (mathExpression | readFunctionExpression | StringLiteral | stringFunctionExpression) ;

readFunctionExpression: 'readInt()' | 'readFloat()' | 'readString()' ;

