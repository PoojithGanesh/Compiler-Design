%{
#include <stdio.h>
%}
%%
"#include"[ ]*"<"[a-zA-Z0-9.]+">"    { printf("HEADER FILE : %s\n", yytext); }
"int"|"float"|"char"|"void"|"return"    { printf("KEYWORD : %s\n", yytext); }
[0-9]+    { printf("NUMBER : %s\n", yytext); }
\"[^\"]*\"    { printf("STRING : %s\n", yytext); }
[+*/=-]    { printf("OPERATOR : %s\n", yytext); }
[(){};,]    { printf("SPECIAL SYMBOL : %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*    { printf("IDENTIFIER : %s\n", yytext); }
[ \t\n]+    ;
.    ;
%%
int main()
{
    yyin = fopen("sample27.c","r");
    if(yyin == NULL)
    {
        printf("File not found\n");
        return 1;
    }
    printf("TOKENS IN THE GIVEN PROGRAM:\n\n");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
