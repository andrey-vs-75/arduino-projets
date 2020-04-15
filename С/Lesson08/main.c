#include <stdio.h>

int main()
{
  int n=0;
  while(n<=1000)
  {
    printf("Please enter an integer.\r\n");
    printf("To exit the program, enter a number greater than 1000 ...\r\n");
    scanf("%d", &n);
    if(n<10)
    {
      printf("You have entered a number less than 10\r\n");
    }
    else if((n>=10)&&(n<=30))
    {
      printf("You entered a number between 10 and 30\r\n");
    }
    else if((n>=31)&&(n<=100))
    {
      printf("You entered a number between 31 and 100\r\n");
    }
    else
    {
      printf("You entered a number greater than 100\r\n");
    }
  }
	return 0; //Return an integer from a function
}