/* Extends level 4 (namely if statements) with while loops. */
grammar CFloor5 ;

import CFloor4 ;

whileLoop: 'while' '(' booleanExpression ')' block ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop ;