#include <stdio.h>
#include <math.h>

int main()
{
    double a, b, c, result;

    printf("Enter expression in form: a op b op c\n");

    char op1, op2;

    scanf("%lf %c %lf %c %lf", &a, &op1, &b, &op2, &c);

    // First handle multiplication or division
    if(op1 == '*' || op1 == '/')
    {
        if(op1 == '*')
            a = a * b;
        else
            a = a / b;

        if(op2 == '+')
            result = a + c;
        else if(op2 == '-')
            result = a - c;
    }
    else if(op2 == '*' || op2 == '/')
    {
        if(op2 == '*')
            b = b * c;
        else
            b = b / c;

        if(op1 == '+')
            result = a + b;
        else if(op1 == '-')
            result = a - b;
    }
    else
    {
        if(op1 == '+')
            a = a + b;
        else if(op1 == '-')
            a = a - b;

        if(op2 == '+')
            result = a + c;
        else if(op2 == '-')
            result = a - c;
    }

    printf("Result = %.2lf\n", result);

    return 0;
}
