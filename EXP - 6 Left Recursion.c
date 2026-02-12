#include <stdio.h>
#include <string.h>
int main() {
    char production[100];
    char alpha[100], beta[100];
    char nonTerminal;
    printf("Enter production (Example: A->Aa|b):\n");
    scanf("%s", production);
    nonTerminal = production[0];
    char *rhs = strstr(production, "->");
    rhs += 2;
    char *part1 = strtok(rhs, "|");
    char *part2 = strtok(NULL, "|");
    if(part1[0] == nonTerminal) {
        strcpy(alpha, part1 + 1); 
        strcpy(beta, part2);
    }
    else {
        strcpy(alpha, part2 + 1);
        strcpy(beta, part1);
    }
    printf("\nAfter Removing Left Recursion:\n");
    printf("%c->%s%c'\n", nonTerminal, beta, nonTerminal);
    printf("%c'->%s%c'|ε\n", nonTerminal, alpha, nonTerminal);
    return 0;
}
