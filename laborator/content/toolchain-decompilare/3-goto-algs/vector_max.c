#include <stdio.h>

int main(void)
{
	int v[] = {4, 1, 2, -17, 15, 22, 6, 2};
	int max;
	int i;

	max = v[0];
	i = 1;

loop:
if(i == sizeof(v)/sizeof(int) - 1)
goto end;
if (v[i] <= max){
	i++;
	goto loop;
}
max = v[i];
i++;
end:;

	(void) i;
	(void) max;



}
