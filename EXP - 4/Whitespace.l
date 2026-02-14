%{
#include <stdio.h>
int space_count = 0;
int tab_count = 0;
int newline_count = 0;
%}
%%
" "        { space_count++; }
"\t"       { tab_count++; }
"\n"       { newline_count++; }
.          ;
%%
int main()
{
printf("Enter text (Press Enter then Ctrl+Z to stop):\n");
yylex();
printf("\nNumber of Spaces   : %d\n", space_count);
printf("Number of Tabs     : %d\n", tab_count);
printf("Number of Newlines : %d\n", newline_count);
return 0;
}
int yywrap(){ return 1; }
