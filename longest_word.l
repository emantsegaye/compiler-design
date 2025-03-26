
%{
#include <stdio.h>
#include <string.h>

int max_length = 0;         
char longest_word[100];    
%}

%%

[a-zA-Z]+ {
    int length = yyleng;   
    if (length > max_length) {
        max_length = length; 
        strcpy(longest_word, yytext);  
    }
}

[ \t\n]+   { /* Ignore whitespace */ }
.            { /* Ignore other characters */ }

%%

int main() {
    yylex();  // Run the lexer
    printf("Length of the longest word: %d\n", max_length);  
    printf("Longest word: %s\n", longest_word);             
    return 0;
}

int yywrap() {
    return 1;
}
