%{
#include <stdio.h>
%}
%%
"=="    { printf("RELATIONAL OPERATOR : %s\n", yytext); }
"!="    { printf("RELATIONAL OPERATOR : %s\n", yytext); }
"<="    { printf("RELATIONAL OPERATOR : %s\n", yytext); }
">="    { printf("RELATIONAL OPERATOR : %s\n", yytext); }
"<"     { printf("RELATIONAL OPERATOR : %s\n", yytext); }
">"     { printf("RELATIONAL OPERATOR : %s\n", yytext); }
[a-zA-Z]+   { printf("WORD : %s\n", yytext); }
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
