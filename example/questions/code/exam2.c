#include <stdio.h>
int main(void)
{
  char string[5][20] = {"First String", "Second String", "Third String",
			"Fourth String", "Fifth String"};
  int i = 0;
  for (i = 1 ; i < 3 ; i += 2) {
    printf("%s, ", string[i]);
  }
  return 0;
}
