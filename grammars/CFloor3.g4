/* Extends previous levels with minimal support for strings - reading, writing, and length. */
grammar CFloor3 ;

/* Note - not explicitly dependent on level 2. Could be moved to a different point in level sequence. */
import CFloor2 ;

expression: mathExpression | readFunctionExpression | StringLiteral ;

Primitive: 'int' | 'float' | 'string' ;

mathOperand: Number | variableAccessor | ( '(' mathExpression ')') | mathFunctionExpression | stringLengthExpression ;

stringLengthExpression: 'length(' variableAccessor ')' ;

readFunctionExpression: 'read_int()' | 'read_float()' | 'read_string()' ;

