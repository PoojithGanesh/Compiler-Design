#include <stdio.h>
#include <string.h>
struct symbol
{
    char name[20];
    char type[20];
};
struct symbol s[100];
int n = 0;
int main()
{
    int choice, i;
    while(1)
    {
        printf("\n1.Insert\n2.Display\n3.Exit\n");
        printf("Enter choice: ");
        scanf("%d", &choice);
        if(choice == 1)
        {
            printf("Enter identifier name: ");
            scanf("%s", s[n].name);
            printf("Enter data type: ");
            scanf("%s", s[n].type);

            n++;
        }
        else if(choice == 2)
        {
            printf("\nSymbol Table\n");
            printf("Name\tType\n");
            for(i = 0; i < n; i++)
            {
                printf("%s\t%s\n", s[i].name, s[i].type);
            }
        }
        else if(choice == 3)
        {
            break;
        }
        else
        {
            printf("Invalid choice\n");
        }
    }
    return 0;
}
