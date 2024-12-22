/* Extends level 1 with non-integral numbers and related functions. */
grammar CFloor2 ;

import CFloor1 ;

Number: [-]?[0-9]+ | [-]?[0-9]* '.' [0-9]+? ;

Primitive: 'int' | 'float' ;

/* TODO: Find a way to reduce copy/paste of production rules when later levels need to add more
   options to a rule from a previous level. The current way makes it easier to omit previous
   levels' options, but that is more often going to be an accident or confusing to the user
   than helpful. It does make it easier to make the grammars independent should we want to
   re-order or make feature sets fully independent (e.g. we don't _really_ need floats before
   we support booleans).

   Option: previous levels declare level-specific non-terminals:
     level1MathOperand: Number | variableAccessor | ( '(' mathExpression ')') ;
     mathOperand: level1MathOperand ; [in CFloor1.g4]
     mathOperand: level1MathOperand | mathFunctionExpression ; [in CFloor2.g4]
   This reduces copy/paste but means that later levels have to deal with increasing numbers of
   non-terminals that add no useful information to the parse tree while requiring distinct code
   to traverse them.
*/
mathOperand: Number | variableAccessor | ( '(' mathExpression ')') | mathFunctionExpression ;

/* TODO: Consider replacing enumeration of math function names here with generic "function name" terminal.
   May want to do either fully generic function invocation or only replace the names part. Fully generic
   functions won't be necessary until level 7 where users can define their own functions, and this format
   has the advantage of automatically enforcing argument typing during parsing.
*/
mathFunctionExpression: ('floor' | 'ceil' | 'round' | 'sqrt' | 'sin' | 'cos' | 'tan') '(' mathExpression ')' ;

readFunctionExpression: 'read_int()' | 'read_float()' ;
