#include <stdio.h>
int main() {
    char input[1000];
    int i = 0;
    printf("Enter an expression:\n");
    fgets(input, sizeof(input), stdin);
    while(input[i] != '\0') {
        if(input[i] == '+' ||
           input[i] == '-' ||
           input[i] == '*' ||
           input[i] == '/') {
            printf("Arithmetic Operator Found: %c\n", input[i]);
        }
        i++;
    }
    return 0;
}
