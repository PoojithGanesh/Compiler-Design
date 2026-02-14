%{
#include <stdio.h>
int vowel_count = 0;
int consonant_count = 0;
%}
%%
[aAeEiIoOuU]      { vowel_count++; }
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]   { consonant_count++; }
\n      { return 0; }
.       ;      /* Ignore spaces, digits, symbols */
%%
int main()
{
    printf("Enter a sentence:\n");
    yylex();

    printf("\nNumber of Vowels      : %d\n", vowel_count);
    printf("Number of Consonants  : %d\n", consonant_count);
    return 0;
}
int yywrap()
{
    return 1;
}
