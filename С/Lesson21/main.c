#include "main.h"
#include "ariph.h"
#include "utils.h"
//----------------------------------------------
float res;
char str1[30] = {};
float yf, zf;
//----------------------------------------------
void print_res(char str[]);
//----------------------------------------------

int main()
{
/*  float xf = 8;
  float yf = 3;
  float zf = 2;
  char str1[30] = {};
  res = xf + yf + zf;
//  printf ("Value is %.5f\n", res);
  sprintf (str1, "Value is ");
  print_res(str1);
  res = xf + yf - zf;
//  printf ("Value is %.5f\n", res);
  sprintf (str1, "Value is ");
  print_res(str1);
*/
  
/*  float xf = 8;
  float yf = 3;
  float zf = 2;
  float res = xf + yf * zf;
  printf ("Value is %.5f\n", res);
  res = xf - yf / zf;
  printf ("Value is %.5f\n", res);
*/

  float xf = 8;
  yf = 3;
  zf = 2;
  float res = xf + my_div();
  printf ("Value is %.5f\n", res);
  res = xf / my_sum();
  printf ("Value is %.5f\n", res);


/*  char str1[35] = {};
  int a = 0b00111000, b = 0b10000010, c = 0b01000001;
  int_to_binary(a, str1);
  printf ("Value is %s\r\n", str1);
  int_to_binary(b, str1);
  printf ("Value is %s\r\n", str1);
  int_to_binary(c, str1);
  printf ("Value is %s\r\n", str1);
  printf("==========\r\n");
  int res = a | b ^ c;
  int_to_binary(res, str1);
  printf ("Value is %s\r\n", str1);
*/
  
   return 0; //Return an integer from a function
}

//--------------------------------------------------------
void print_res(char str[])
{
  printf ("%s %.5f\n", str, res);
}
//--------------------------------------------------------
