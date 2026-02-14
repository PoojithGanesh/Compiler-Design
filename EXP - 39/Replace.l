%{
#include <stdio.h>
#include <string.h>

char old_word[50];
char new_word[50];
%}

%%

[a-zA-Z]+ {
    if(strcmp(yytext, old_word) == 0)
        printf("%s", new_word);
    else
        printf("%s", yytext);
}

"\n" { return 0; }

. { printf("%s", yytext); }

%%

int main()
{
printf("Enter word to replace: ");
scanf("%s", old_word);

printf("Enter new word: ");
scanf("%s", new_word);

printf("Enter sentence:\n");
getchar();   /* remove leftover newline */

yylex();

return 0;
}

int yywrap(){ return 1; }
