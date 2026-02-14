%{
#include <stdio.h>
%}
%%
"+"     { printf("ARITHMETIC OPERATOR : +\n"); }
"-"     { printf("ARITHMETIC OPERATOR : -\n"); }
"*"     { printf("ARITHMETIC OPERATOR : *\n"); }
"/"     { printf("ARITHMETIC OPERATOR : /\n"); }
[ \t\n]+    ;
.   ;
%%
int main()
{
printf("Enter expression:\n");
yylex();
return 0;
}
int yywrap(){ return 1; }
