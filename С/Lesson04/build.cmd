gcc -Wall -E main.c -o main.i
gcc -Wall -S main.i -o main.s
gcc -Wall -c main.c
gcc -Wall main.o -o lesson04