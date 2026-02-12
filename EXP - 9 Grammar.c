#include <stdio.h>
#include <string.h>
int main()
{
    char str[100];
    int i, a = 0, b = 0;
    int len, valid = 1;
    printf("Enter string: ");
    scanf("%s", str);
    len = strlen(str);
    for(i = 0; i < len; i++)
    {
        if(str[i] == 'a')
            a++;
        else
            break;
    }
    for(; i < len; i++)
    {
        if(str[i] == 'b')
            b++;
        else
        {
            valid = 0;
            break;
        }
    }
    if(a == b && valid == 1 && a > 0)
        printf("String satisfies the grammar.\n");
    else
        printf("String does NOT satisfy the grammar.\n");
    return 0;
}
