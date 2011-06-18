#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main () {
  int n;  
  int i = 0;
  char str[50];
  char chr;

  while ((chr = getchar()) != EOF ) {
    if(chr == ',' || chr == '\n') {
      str[i] = '\0';
      i = 0;
      n = pow(atoi(str), 2);
      printf("%i%c", n, chr);
    } else {
      str[i] = chr;
      i++;
    } 
  }
  return 0;
}