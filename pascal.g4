grammar pascal;

start     : 'program' ID ';' 'var' decl_list main_code EOF ;

decl_list : decl | decl decl_list ;
decl      : ID ':' 'integer' ';' ;

main_code : 'begin' st_list 'end' '.' ;
code_block: statement | 'begin' st_list 'end' ;
st_list   : statement ';' | statement ';' st_list  ;
          
statement : assign | branch | out ;

assign    : ID ':=' expr ;
out       : 'writeln' '(' expr ')' ;
branch    : 'if' relation 'then' code_block ;
expr      : NUMBER | ID ;
relation  : expr LT expr | expr LEQ expr | expr EQ expr 
          | expr NEQ expr | expr GEQ expr | expr GT expr ;

EQ        : '=' ;
LT        : '<' ;
LEQ       : '<=' ;
GT        : '>' ;
GEQ       : '>=' ;
NEQ       : '<>' ;
ID        : [a-z]+ ;
NUMBER    : [0-9]+ ;
R_COMMENT : '(*' .*? '*)' -> skip ;     // .*? matches anything until the first */
C_COMMENT : '{' .*? '}' -> skip ;       // .*? matches anything until the first }
LINE_COMMENT : '//' ~[\r\n]* -> skip ;  // ~[\r\n]* matches anything but \r and \n
WS        : [ \n\t\r]+ -> skip;
ErrorChar : . ;
