%{
#include <stdio.h>
%}
%%
auto        { printf("KEYWORD : %s\n", yytext); }
break       { printf("KEYWORD : %s\n", yytext); }
case        { printf("KEYWORD : %s\n", yytext); }
char        { printf("KEYWORD : %s\n", yytext); }
const       { printf("KEYWORD : %s\n", yytext); }
continue    { printf("KEYWORD : %s\n", yytext); }
default     { printf("KEYWORD : %s\n", yytext); }
do          { printf("KEYWORD : %s\n", yytext); }
double      { printf("KEYWORD : %s\n", yytext); }
else        { printf("KEYWORD : %s\n", yytext); }
enum        { printf("KEYWORD : %s\n", yytext); }
extern      { printf("KEYWORD : %s\n", yytext); }
float       { printf("KEYWORD : %s\n", yytext); }
for         { printf("KEYWORD : %s\n", yytext); }
goto        { printf("KEYWORD : %s\n", yytext); }
if          { printf("KEYWORD : %s\n", yytext); }
int         { printf("KEYWORD : %s\n", yytext); }
long        { printf("KEYWORD : %s\n", yytext); }
register    { printf("KEYWORD : %s\n", yytext); }
return      { printf("KEYWORD : %s\n", yytext); }
short       { printf("KEYWORD : %s\n", yytext); }
signed      { printf("KEYWORD : %s\n", yytext); }
sizeof      { printf("KEYWORD : %s\n", yytext); }
static      { printf("KEYWORD : %s\n", yytext); }
struct      { printf("KEYWORD : %s\n", yytext); }
switch      { printf("KEYWORD : %s\n", yytext); }
typedef     { printf("KEYWORD : %s\n", yytext); }
union       { printf("KEYWORD : %s\n", yytext); }
unsigned    { printf("KEYWORD : %s\n", yytext); }
void        { printf("KEYWORD : %s\n", yytext); }
volatile    { printf("KEYWORD : %s\n", yytext); }
while       { printf("KEYWORD : %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*   { printf("IDENTIFIER : %s\n", yytext); }
[ \t\n]+   ;
.   ;
%%
int main()
{
    yyin = fopen("sample29.c","r");
    if(yyin == NULL)
    {
        printf("File not found\n");
        return 1;
    }
    printf("KEYWORDS AND IDENTIFIERS:\n\n");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
