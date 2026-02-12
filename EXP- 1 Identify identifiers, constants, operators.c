#include <stdio.h>
#include <ctype.h>
#include <string.h>

#define MAX_LEN 100
int isOperator(char ch) {
    char op[] = "+-*/=%<>!&|";
    for(int i = 0; op[i] != '\0'; i++)
        if(ch == op[i])
            return 1;
    return 0;
}
int main() {
    char input[1000], ch, buffer[MAX_LEN];
    int i, j;
    printf("Enter the program (Press Ctrl+D to stop):\n");
    while(fgets(input, sizeof(input), stdin) != NULL) {
        j = 0;
        while(input[j] != '\0') {
            ch = input[j];
            if(ch == ' ' || ch == '\t' || ch == '\n') {
                j++;
                continue;
            }
            if(ch == '/' && input[j+1] == '/') {
                break; 
            }
            if(isalpha(ch) || ch == '_') {
                i = 0;
                while(isalnum(input[j]) || input[j] == '_')
                    buffer[i++] = input[j++];
                buffer[i] = '\0';
                printf("Identifier: %s\n", buffer);
                continue;
            }
            if(isdigit(ch)) {
                i = 0;
                while(isdigit(input[j]))
                    buffer[i++] = input[j++];
                buffer[i] = '\0';
                printf("Constant: %s\n", buffer);
                continue;
            }
            if(isOperator(ch)) {
                printf("Operator: %c\n", ch);
            }

            j++;
        }
    }

    return 0;
}
