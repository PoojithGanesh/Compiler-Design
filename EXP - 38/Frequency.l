%{
#include <stdio.h>
#include <string.h>
char search_word[50];
int count = 0;
%}
%%
[a-zA-Z]+ {
    if(strcmp(yytext, search_word) == 0)
        count++;
}
"\n" { return 0; }
[ \t]+ ;
. ;
%%
int main()
{
printf("Enter word to search: ");
scanf("%s", search_word);
printf("Enter sentence:\n");
getchar();   /* remove leftover newline */
yylex();
printf("\nFrequency of '%s' : %d\n", search_word, count);
return 0;
}
int yywrap(){ return 1; }
