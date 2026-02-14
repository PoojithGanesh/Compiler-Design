%{
#include <stdio.h>
%}
%%
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Valid Identifier\n"); }
"\n"   { return 0; }
.      { printf("Invalid Identifier\n"); return 0; }
%%
int main()
{
printf("Enter Identifier: ");
yylex();
return 0;
}
int yywrap(){ return 1; }
