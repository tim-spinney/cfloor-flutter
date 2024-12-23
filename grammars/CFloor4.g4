/* Extends previous levels with booleans and conditional blocks */
grammar CFloor4 ;

/* Note - not explicitly dependent on level 3. Could be moved to a different point in level sequence. */
import CFloor3 ;

BinaryBooleanOperator: 'and' | 'or' ;

UnaryBooleanOperator: 'not' ;

BooleanLiteral: 'true' | 'false' ;

Comparator: '==' | '!=' | '<' | '<=' | '>' | '>=' ;

expression: mathExpression | readFunctionExpression | StringLiteral | booleanExpression ;

primitive: 'int' | 'float' | 'string' | 'bool' ;

booleanOperand: BooleanLiteral | variableAccessor | '(' booleanExpression ')' ;

booleanExpression:
    UnaryBooleanOperator booleanOperand |
    mathOperand Comparator mathOperand |
    booleanOperand (BinaryBooleanOperator booleanOperand)? ;

/* TODO: consider moving below into a separate level and letting this level be boolean vars only */

block: '{' statement+ '}' ;
ifStatement: 'if' '(' booleanExpression ')' block ;
elseBlock: 'else' block ;
ifBlock: ifStatement ('else' ifStatement)* elseBlock? ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock ;
