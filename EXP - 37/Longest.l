%{
#include <stdio.h>
#include <string.h>
int max_length=0;
char longest_word[100];
%}
%%
[a-zA-Z]+ { int len=strlen(yytext); if(len>max_length){ max_length=len; strcpy(longest_word,yytext);} }
"\n" { return 0; }
[ \t]+ ;
. ;
%%
int main()
{
printf("Enter a sentence:\n");
yylex();
printf("\nLongest Word : %s\n",longest_word);
printf("Length : %d\n",max_length);
return 0;
}
int yywrap(){ return 1; }
