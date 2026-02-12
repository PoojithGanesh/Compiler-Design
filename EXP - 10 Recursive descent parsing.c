#include <stdio.h>
#include <string.h>
char input[100];
int i = 0;
void E();
void E_dash();
void T();
void T_dash();
void F();
void E()
{
    T();
    E_dash();
}
void E_dash()
{
    if(input[i] == '+')
    {
        i++;
        T();
        E_dash();
    }
}
void T()
{
    F();
    T_dash();
}
void T_dash()
{
    if(input[i] == '*')
    {
        i++;
        F();
        T_dash();
    }
}
void F()
{
    if(input[i] == '(')
    {
        i++;
        E();
        if(input[i] == ')')
            i++;
        else
            printf("Error: Missing )\n");
    }
    else if(input[i] == 'i' && input[i+1] == 'd')
    {
        i += 2;   
    }
    else
    {
        printf("Error\n");
    }
}
int main()
{
    printf("Enter expression: ");
    scanf("%s", input);
    E();
    if(input[i] == '\0')
        printf("String Accepted\n");
    else
        printf("String Rejected\n");
    return 0;
}
