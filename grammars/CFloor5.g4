grammar CFloor5 ;

import CFloor4 ;

whileLoop: 'while' '(' booleanExpression ')' block ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock | whileLoop ;