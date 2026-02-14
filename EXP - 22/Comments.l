%{
#include <stdio.h>
int comment_count = 0;
FILE *fp;
%}
%%
"//".*              { comment_count++; }
"/*"([^*]|\n)*"*/"  { comment_count++; }
.|\n                { fputc(yytext[0], fp); }
%%
int main()
{
    yyin = fopen("input.c","r");
    fp = fopen("output.c","w");
    if(yyin == NULL)
    {
        printf("Input file not found\n");
        return 1;
    }
    yylex();
    printf("\nNumber of comment lines: %d\n", comment_count);
    fclose(yyin);
    fclose(fp);
    return 0;
}
int yywrap()
{
    return 1;
}
