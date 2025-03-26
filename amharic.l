
%{
#include <stdio.h>
%}

%%

ሀ|ለ|መ|ሰ|ረ|ቀ|በ|ነ|አ|ከ|ወ|ዘ|ደ|ገ|ጠ|ፀ|ፈ|ፐ    { printf("ግዕዝ (Ge'ez) : %s\n", yytext); }
ሁ|ሉ|ሙ|ሱ|ሩ|ቁ|ቡ|ኑ|ኡ|ኩ|ዉ|ዙ|ዱ|ጉ|ጡ|ፁ|ፉ|ፑ    { printf("ካዕብ (Ka'eb) : %s\n", yytext); }
ሂ|ሊ|ሚ|ሲ|ሪ|ቂ|ቢ|ኒ|ኢ|ኪ|ዊ|ዚ|ዲ|ጊ|ጢ|ፂ|ፊ|ፒ    { printf("ሣልስ (Sals) : %s\n", yytext); }
ሃ|ላ|ማ|ሳ|ራ|ቃ|ባ|ና|ኣ|ካ|ዋ|ዛ|ዳ|ጋ|ጣ|ፃ|ፋ|ፓ    { printf("ራብዕ (Rab'e) : %s\n", yytext); }
ሄ|ሌ|ሜ|ሴ|ሬ|ቄ|ቤ|ኔ|ኤ|ኬ|ዌ|ዜ|ዴ|ጌ|ጤ|ፄ|ፌ|ፔ    { printf("ኃምስ (Hams) : %s\n", yytext); }
ህ|ል|ም|ስ|ር|ቅ|ብ|ን|እ|ክ|ው|ዝ|ድ|ግ|ጥ|ፅ|ፍ|ፕ    { printf("ሳድስ (Sads) : %s\n", yytext); }
ሆ|ሎ|ሞ|ሶ|ሮ|ቆ|ቦ|ኖ|ኦ|ኮ|ዎ|ዞ|ዶ|ጎ|ጦ|ፆ|ፎ|ፖ    { printf("ሳብዕ (Sab'e) : %s\n", yytext); }
[^ \n]+                  { printf("Unrecognized character: %s\n", yytext); }
[ \t\n]                 ;  

%%

int main() {
    printf("Enter Amharic text:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
