grammar CFloor7 ;

import CFloor6 ;

parameter: type Identifier ;

parameterList: (parameter (',' parameter)*)? ;

functionDefinition: type Identifier '(' parameterList ')' block ;

program: functionDefinition+ EOF ;