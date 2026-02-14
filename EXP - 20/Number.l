%{
#include <stdio.h>
int line_no = 1;
%}
%%
\n      { printf("\n%d. ", ++line_no); }
.       { printf("%s", yytext); }
%%
int main()
{
    yyin = fopen("sample20.c","r");
    if(yyin == NULL)
    {
        printf("File not found\n");
        return 1;
    }
    printf("1. ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
