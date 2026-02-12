#include <stdio.h>
int main()
{
    char str[100];
    int characters = 0, words = 0, lines = 0;
    printf("Enter text (Press Enter twice to stop):\n");
    while(1)
    {
        fgets(str, sizeof(str), stdin);
        if(str[0] == '\n')  
            break;
        lines++;
        for(int i = 0; str[i] != '\0'; i++)
        {
            characters++;
            if((str[i] == ' ' && str[i+1] != ' ' && str[i+1] != '\n')
                || (i == 0 && str[i] != ' '))
                words++;
        }
    }
    printf("\nCharacters = %d\n", characters);
    printf("Words      = %d\n", words);
    printf("Lines      = %d\n", lines);
    return 0;
}
