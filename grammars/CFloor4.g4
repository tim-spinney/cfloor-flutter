grammar CFloor4 ;

import CFloor3 ;

BinaryBooleanOperator: 'and' | 'or' ;

UnaryBooleanOperator: 'not' ;

BooleanLiteral: 'true' | 'false' ;

Comparator: '==' | '!=' | '<' | '<=' | '>' | '>=' ;

Type: 'int' | 'float' | 'string' | 'bool' ;

booleanOperand: BooleanLiteral | Identifier | '(' booleanExpression ')' ;

booleanExpression:
    UnaryBooleanOperator booleanOperand |
    mathOperand  Comparator mathOperand |
    booleanOperand (BinaryBooleanOperator booleanOperand)? ;

assignment: Identifier '=' (mathExpression | readFunctionExpression | StringLiteral | booleanExpression) ;

program: statement+ EOF;