#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

int vowels_count_2d(const int rows, const int cols, char strings[][cols]);

int main(){
	char strings[3][50] = {"hello WORLD!", "aHOJ", "Ahoj"};
     printf("%d\n", vowels_count_2d(3, 50, strings));
     // 7
}
int vowels_count_2d(const int rows, const int cols, char strings[][cols]){
     int count = 0;

     for(int i = 0; i < rows; i++){
         for(int j = 0; j < cols; j++){
             if(isupper((int)strings[i][j])){
             strings[i][j]=tolower(strings[i][j]);
             }
             if(strings[i][j]== 'a' || strings[i][j]== 'e' ||strings[i][j]== 'i' ||strings
    [i][j]== 'o' ||strings[i][j]== 'u' || strings[i][j]== 'y'){
                 count=count+1;
             }
     }
}
return count;
}
