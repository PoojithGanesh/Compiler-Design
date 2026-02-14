%{
#include <stdio.h>
int pos_count = 0;
int neg_count = 0;
%}
%%
-[0-9]+      { 
                printf("Negative Number : %s\n", yytext); 
                neg_count++; 
             }
[0-9]+       { 
                printf("Positive Number : %s\n", yytext); 
                pos_count++; 
             }
[ \t\n]+     ;   /* Ignore spaces */

.            ;   /* Ignore other characters */
%%
int main()
{
    printf("Enter numbers:\n");
    yylex();
    printf("\nTotal Positive Numbers : %d\n", pos_count);
    printf("Total Negative Numbers : %d\n", neg_count);
    return 0;
}
int yywrap()
{
    return 1;
}
