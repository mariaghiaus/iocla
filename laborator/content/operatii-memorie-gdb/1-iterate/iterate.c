#include <stdio.h>

/**
 * Afisati adresele elementelor din vectorul "v" impreuna cu valorile
 * de la acestea.
 * curgeti adresele, pe rand, din octet in octet,
 * din 2 in 2 octeti si apoi din 4 in 4.
 */

int main() {
    int v[] = {0xCAFEBABE, 0xDEADBEEF, 0x0B00B135, 0xBAADF00D, 0xDEADC0DE};
    int i;
    short *p = (short*)&v;
    for(i = 0; i < sizeof(v)/2; i++)
    	printf("%%p -> 0x%x\n", (p+i), *(p+i));
    return 0;
}
