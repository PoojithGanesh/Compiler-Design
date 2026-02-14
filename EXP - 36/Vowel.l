%{
#include <stdio.h>
%}
%%
^[AEIOUaeiou][a-zA-Z]*   { printf("Accepted: String starts with a vowel\n"); }
^[^AEIOUaeiou].*         { printf("Rejected: String does not start with a vowel\n"); }
\n                       { /* ignore newline */ }
%%
int main()
{
    printf("Enter a string: ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
