#include <stdio.h>
#include <string.h>
int main()
{
    int n, i;
    char stmt[20];
    printf("Enter number of three address statements: ");
    scanf("%d", &n);
    for(i = 0; i < n; i++)
    {
        printf("Enter statement %d (format: t1=a+b): ", i+1);
        scanf("%s", stmt);

        // Format: t1=a+b
        // stmt[0] = t
        // stmt[1] = 1
        // stmt[2] = =
        // stmt[3] = a
        // stmt[4] = +
        // stmt[5] = b

        printf("\nTarget Code:\n");
        printf("MOV R0, %c\n", stmt[3]);
        switch(stmt[4])
        {
            case '+':
                printf("ADD R0, %c\n", stmt[5]);
                break;
            case '-':
                printf("SUB R0, %c\n", stmt[5]);
                break;
            case '*':
                printf("MUL R0, %c\n", stmt[5]);
                break;
            case '/':
                printf("DIV R0, %c\n", stmt[5]);
                break;
        }
        printf("MOV %c%c, R0\n\n", stmt[0], stmt[1]);
    }
    return 0;
}
