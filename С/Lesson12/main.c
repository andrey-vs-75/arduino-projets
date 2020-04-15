#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void MyFunc()
{
  printf ("Hello from MyFunc!\r\n");
}

void PrintSum(int x, int y);
int Sum(int x, int y);

int main()
{
 
  int a = 15, b = 17;
  printf ("%d + %d = %d\r\n", a, b, Sum (a, b));
 
   return 0; //Return an integer from a function
}

void PrintSum(int x, int y)
{
  printf ("%d + %d = %d\r\n", x, y, x+y);
}

int Sum(int x, int y)
{
  return x + y;
}