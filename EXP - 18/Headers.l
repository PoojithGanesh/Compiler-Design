%{
#include <stdio.h>
int macro_count = 0;
int header_count = 0;
%}
%%
^#[ \t]*define        { macro_count++; }
^#[ \t]*include       { header_count++; }
[ \t\n]+              ;
.                     ;
%%
int main()
{
    yyin = fopen("sample18.c","r");
    if(yyin == NULL)
    {
        printf("File not found\n");
        return 1;
    }
    yylex();
    printf("\nNumber of Macros Defined  : %d\n", macro_count);
    printf("Number of Header Files Included : %d\n", header_count);
    fclose(yyin);
    return 0;
}

int yywrap()
{
    return 1;
}
