grammar ST;

@header {
package org.fbme.lib.st.parser;
}

statementList
    : (statements+=statement ';')*
    ;

statement
    : variable ':=' expression                          #assigmentStatement
    | 'IF' condition=expression
      'THEN' thenClause=statementList
       elsifClauses+=elsifClause*
    ( 'ELSE' elseClause=statementList)?
      'END_IF'                                          #ifStatement
    | 'CASE' expression 'OF'
      caseClauses+=caseClause*
    ( 'ELSE' '->' elseClause=statementList)?
      'END_CASE'                                        #caseStatement
    | 'FOR' varName=ID ':='
      varBegin=expression 'TO' varEnd=expression
    ( 'BY' varBy=expression)?
      'DO' body=statementList
      'END_FOR'                                         #forStatement
    | 'WHILE' condition=expression
      'DO' body=statementList
      'END_WHILE'                                       #whileStatement
    | 'REPEAT' body=statementList
      'UNTIL' condition=expression
      'END_REPEAT'                                      #repeatStatement
    | 'RETURN'                                          #returnStatement
    | 'EXIT'                                            #exitStatement
    ;

elsifClause
    : 'ELSIF' condition=expression 'THEN' body=statementList
    ;

caseClause
    : literal '->' body=statementList
    ;

expression
    : literal                                               #constant
    | ID '(' (params+=expression
    ( ',' params+=expression)*)? ')'                        #functionCall
    | variable                                              #varExpression
    | '(' e=expression ')'                                  #parensExpression
    | op=('-'|'NOT') e=expression                           #unaryExpression
    | l=expression op='**' r=expression                     #binaryExpression
    | l=expression op=('*'|'/'|'MOD') r=expression          #binaryExpression
    | l=expression op=('+'|'-') r=expression                #binaryExpression
    | l=expression op=('<'|'>'|'<='|'>=') r=expression      #binaryExpression
    | l=expression op=('='|'<>') r=expression               #binaryExpression
    | l=expression op=('&'|'AND') r=expression              #binaryExpression
    | l=expression op='XOR' r=expression                    #binaryExpression
    | l=expression op='OR' r=expression                     #binaryExpression
    ;

literal
    : SingedInteger #dec
    | DecInteger    #dec
    | BinInteger    #bin
    | OctInteger    #oct
    | HexInteger    #hex
    | Real          #real
    | String        #string
    | WString       #wstring
    | Boolean       #boolean
    | BooleanBin    #booleanBin
    | Duration      #duration
    ;

variable
    : ID                                                    #varReference
    | record=variable '.' ID                                #fieldSelctor
    | subscripted=variable '[' subscrpits+=expression
    (',' subscrpits+=expression)* ']'                       #arraySelector
    ;


statementListWithVariableDeclarations
    : ('VAR' (decls+=variablesDeclaration)+ 'END_VAR')? statementList
    ;

variablesDeclaration
   : name=ID ':' type=ID ';'
   ;


DecInteger:       Dec ('_'|Dec)*;
BinInteger: '2#'  Bin ('_'|Bin)*;
OctInteger: '8#'  Oct ('_'|Oct)*;
HexInteger: '16#' Hex ('_'|Hex)*;

SingedInteger: ('+'|'-')? DecInteger;

fragment Exponent: ('e'|'E') SingedInteger;
Real: SingedInteger '.' DecInteger Exponent?;

String:  '\'' (('$' [$'LNPRT] | '$' Hex Hex)| ~['\n\r\\])* '\'';
WString: '"'  (('$' [$"LNPRT] | '$' Hex Hex Hex Hex)| ~["\n\r\\])* '"';

Boolean: 'TRUE'|'FALSE';
BooleanBin: 'BOOL#'('1'|'0');

Duration: ('T' | 'TIME') '#' '-'? Interval;

fragment Interval: Days | Hours | Minutes | Seconds | Milliseconds;
fragment FixedPoint: DecInteger ( '.' DecInteger)?;

fragment Days: FixedPoint 'd' | DecInteger 'd' '_' Hours;
fragment Hours: FixedPoint 'h' | DecInteger 'h' '_' Minutes;
fragment Minutes: FixedPoint 'm' | DecInteger 'm' '_' Seconds;
fragment Seconds: FixedPoint 's' | DecInteger 's' '_' Milliseconds;
fragment Milliseconds: FixedPoint 'ms';

ID: [A-Za-z][A-Za-z_0-9]*;

fragment Dec: [0-9];
fragment Bin: [0-1];
fragment Oct: [0-7];
fragment Hex: [0-9a-fA-F];

WS : [ \n\r\t]+ -> channel(HIDDEN) ;
COMMENT : '(*' (COMMENT|.)*? '*)' -> channel(HIDDEN) ;