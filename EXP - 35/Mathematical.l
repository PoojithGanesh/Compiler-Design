%{
#include <stdio.h>
%}
%%
[0-9]+[ ]*"+"[ ]*[0-9]+   { 
    int a, b;
    sscanf(yytext, "%d+%d", &a, &b);
    printf("Addition = %d\n", a + b);
}
[0-9]+[ ]*"-"[ ]*[0-9]+   { 
    int a, b;
    sscanf(yytext, "%d-%d", &a, &b);
    printf("Subtraction = %d\n", a - b);
}
[0-9]+[ ]*"*"[ ]*[0-9]+   { 
    int a, b;
    sscanf(yytext, "%d*%d", &a, &b);
    printf("Multiplication = %d\n", a * b);
}
[0-9]+[ ]*"/"[ ]*[0-9]+   { 
    int a, b;
    sscanf(yytext, "%d/%d", &a, &b);
    if (b != 0)
        printf("Division = %d\n", a / b);
    else
        printf("Division by zero not allowed\n");
}
\n   { /* ignore newline */ }
%%
int main()
{
    printf("Enter an expression (e.g., 5+3): ");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}
