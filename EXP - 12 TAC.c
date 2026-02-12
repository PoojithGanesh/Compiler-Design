#include <stdio.h>
#include <string.h>
int main()
{
    char exp[50];
    char op1, op2, op3, op4, op5;
    printf("Enter expression (Example: w=r+a*b): ");
    scanf("%s", exp);
    printf("\nThree Address Code:\n");

    // Format: x=a+b*c
    // exp[0] = lhs
    // exp[2] = first operand
    // exp[3] = first operator
    // exp[4] = second operand
    // exp[5] = second operator
    // exp[6] = third operand

    if(exp[5] == '*' || exp[5] == '/')
    {
        printf("t1 = %c %c %c\n", exp[4], exp[5], exp[6]);
        printf("t2 = %c %c t1\n", exp[2], exp[3]);
        printf("%c = t2\n", exp[0]);
    }
    else if(exp[3] == '*' || exp[3] == '/')
    {
        printf("t1 = %c %c %c\n", exp[2], exp[3], exp[4]);
        printf("t2 = t1 %c %c\n", exp[5], exp[6]);
        printf("%c = t2\n", exp[0]);
    }
    else
    {
        printf("t1 = %c %c %c\n", exp[2], exp[3], exp[4]);
        printf("t2 = t1 %c %c\n", exp[5], exp[6]);
        printf("%c = t2\n", exp[0]);
    }
    return 0;
}
