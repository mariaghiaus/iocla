#include <stdio.h>

int main(void)
{
	int v[] =  {1, 2, 15, 51, 53, 66, 202, 7000};
	int dest = v[2]; /* 15 */
	int start = 0;
	int end = sizeof(v) / sizeof(int) - 1;
	int mij=(start+end)/2;

	/* TODO: Implement binary search */

loop:
if(start>=end || v[mij] == dest)
goto end;
if( v[mij] < dest){
	int mij=(start+end)/2;
	end = mij;
	goto loop;
}
if( v[mij] >dest){
	int mij=(start+end)/2;
	start = mij;
	goto loop;
}

end:;

	(void) dest;
	(void) start;
	(void) end;
}
