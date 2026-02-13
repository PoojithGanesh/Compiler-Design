%{
#include <stdio.h>
%}
%%
\"[^\"]*\"      { printf("String Constant: %s\n", yytext); }
[0-9]+\.[0-9]+  { printf("Float Constant: %s\n", yytext); }
[0-9]+          { printf("Integer Constant: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*   ;
[ \t\n]+        ;
.               ;
%%
int main()
{
    yyin = fopen("sample1.c","r");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
