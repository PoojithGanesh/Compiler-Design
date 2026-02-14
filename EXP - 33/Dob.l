%{
#include <stdio.h>
%}
%%
(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/(19|20)[0-9][0-9] { printf("Valid DOB\n"); }
"\n" { return 0; }
. { printf("Invalid DOB\n"); return 0; }
%%
int main()
{
printf("Enter DOB (DD/MM/YYYY): ");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
