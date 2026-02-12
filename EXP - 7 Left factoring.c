#include <stdio.h>
#include <string.h>
int main() {
    char production[100];
    char alpha[100], beta1[100], beta2[100];
    int i, j = 0;
    printf("Enter production (Example: A->ab|ac):\n");
    scanf("%s", production);
    char *rhs = strstr(production, "->");
    rhs += 2;
    char *part1 = strtok(rhs, "|");
    char *part2 = strtok(NULL, "|");
    for(i = 0; part1[i] && part2[i]; i++) {
        if(part1[i] == part2[i])
            alpha[j++] = part1[i];
        else
            break;
    }
    alpha[j] = '\0';
    strcpy(beta1, part1 + j);
    strcpy(beta2, part2 + j);
    printf("\nAfter Removing Left Factoring:\n");
    printf("%c->%s%c'\n", production[0], alpha, production[0]);
    printf("%c'->%s|%s\n", production[0], beta1, beta2);
    return 0;
}
