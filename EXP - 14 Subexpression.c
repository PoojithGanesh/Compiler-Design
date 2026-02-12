#include <stdio.h>
#include <string.h>
int main()
{
    char exp[10][20];
    int n, i, j;
    printf("Enter number of expressions: ");
    scanf("%d", &n);
    for(i = 0; i < n; i++)
    {
        printf("Enter expression %d: ", i+1);
        scanf("%s", exp[i]);
    }
    printf("\nOptimized Code:\n");
    for(i = 0; i < n; i++)
    {
        int found = 0;
        for(j = 0; j < i; j++)
        {
            if(strcmp(strchr(exp[i],'='), strchr(exp[j],'=')) == 0)
            {
                printf("%c%c = %c%c\n",
                       exp[i][0], exp[i][1],
                       exp[j][0], exp[j][1]);
                found = 1;
                break;
            }
        }
        if(!found)
        {
            printf("%s\n", exp[i]);
        }
    }
    return 0;
}
