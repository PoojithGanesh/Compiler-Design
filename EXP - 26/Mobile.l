%{
#include <stdio.h>
%}
%%
[6-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]    { printf("Valid Mobile Number\n"); }
\n      { return 0; }
.       { printf("Invalid Mobile Number\n"); return 0; }
%%
int main()
{
    printf("Enter Mobile Number: ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
