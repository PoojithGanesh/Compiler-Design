%{
#include <stdio.h>
%}
%
http:\/\/[a-zA-Z0-9.-]+[.][a-zA-Z][a-zA-Z]+ { printf("Valid URL\n"); }
https:\/\/[a-zA-Z0-9.-]+[.][a-zA-Z][a-zA-Z]+ { printf("Valid URL\n"); }
"\n" { return 0; }
. { printf("Invalid URL\n"); return 0; }
%%
int main()
{
printf("Enter URL: ");
yylex();
return 0;
}
int yywrap()
{
return 1;
}
