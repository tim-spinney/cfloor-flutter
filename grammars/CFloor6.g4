grammar CFloor6 ;

import CFloor5 ;

typedAssignment: Type assignment ;

forLoop: 'for' '(' typedAssignment ';' booleanExpression ';' assignment ')' block ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop | forLoop ;

program: statement* ;