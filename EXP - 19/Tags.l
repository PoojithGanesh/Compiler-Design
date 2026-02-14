%{
#include <stdio.h>
%}
%%
\<[^>]+\>      { printf("HTML Tag: %s\n", yytext); }
[ \t\n]+       ;
.              ;
%%
int main()
{
    yyin = fopen("sample.html","r");
    if(yyin == NULL)
    {
        printf("File not found\n");
        return 1;
    }
    printf("HTML Tags in the file:\n\n");
    yylex();
    fclose(yyin);
    return 0;
}
int yywrap()
{
    return 1;
}
