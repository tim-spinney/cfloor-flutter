grammar CFloor4 ;

import CFloor3 ;

BinaryBooleanOperator: 'and' | 'or' ;

UnaryBooleanOperator: 'not' ;

BooleanLiteral: 'true' | 'false' ;

Comparator: '==' | '!=' | '<' | '<=' | '>' | '>=' ;

type: 'int' | 'float' | 'string' | 'bool' ;

booleanOperand: BooleanLiteral | variableAccessor | '(' booleanExpression ')' ;

booleanExpression:
    UnaryBooleanOperator booleanOperand |
    mathOperand Comparator mathOperand |
    booleanOperand (BinaryBooleanOperator booleanOperand)? ;

expression: mathExpression | readFunctionExpression | StringLiteral | booleanExpression ;

assignment: Identifier '=' expression ;

block: '{' statement+ '}' ;
ifStatement: 'if' '(' booleanExpression ')' block ;
elseBlock: 'else' block ;
ifBlock: ifStatement ('else' ifStatement)* elseBlock? ;

statement: writeStatement | assignStatement | declAssignStatement | ifBlock ;

program: statement+ EOF;