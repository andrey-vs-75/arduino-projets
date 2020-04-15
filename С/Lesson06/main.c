#include <stdio.h>

int main()
{
  int i=10;
  //------------------------
  while(i)
  {
    printf("i = %d\r\n", i);
    i--;
  }
  //------------------------
 printf("=========================\r\n");
  i = 10;
  do
  {
    printf("i = %d\r\n", i);
    i--;
  } while(i);
	printf("=========================\r\n");
  for(i=0; i<10; i++)
  {
    printf("i = %d\r\n", i);
  }
  //------------------------
	
	return 0; //Return an integer from a function
}