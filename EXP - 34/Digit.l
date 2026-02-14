%{
#include <stdio.h>
%}
%%
[0-9]      { printf("Given input is a digit\n"); }
[^0-9\n]   { printf("Given input is NOT a digit\n"); }
\n         { /* ignore newline */ }
%%
int main()
{
    printf("Enter a character: ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
