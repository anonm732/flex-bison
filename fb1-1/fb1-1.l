/* wc == word count program */
/* Declare and Setting Options */
%{
int chars = 0;
int words = 0;
int lines = 0;
%}
/* Declare and Setting Options */
/* Patterns and Actions  */
%%
[a-zA-Z]+   { words++; chars += strlen(yytext); }
\n          { chars++; lines++; }
.           { chars++; }
%%
/* Patterns and Actions  */
/* C code that is copied to the generated scanner */
int main(int argc, char** argv) {
    yylex(); /* 별도의 설정이 없으면 표준 입력을 읽음 */
    printf("%8d%8d%8d\n", lines, words, chars);
}
/* C code that is copied to the generated scanner */
