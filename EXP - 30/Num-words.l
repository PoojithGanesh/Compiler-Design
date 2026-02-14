%{
#include <stdio.h>
%}
%%
[0-9]+        { printf("NUMBER : %s\n", yytext); }
[a-zA-Z]+     { printf("WORD   : %s\n", yytext); }
[ \t\n]+      ;   /* Ignore spaces */
.             ;   /* Ignore special characters */
%%
int main()
{
    printf("Enter the statement:\n");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
