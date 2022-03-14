#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int size(char* p) {
	int i;
	for (i = 0; p[i] != NULL; i++)
		;
	return i;
}

char* delete_first(char s[], char* pattern) {
	char* c;
	int ok = 1, k, i, j, size_pattern;
	size_pattern = size(pattern);
	for (i = 0; i < sizeof(s) && ok == 1; i++) {
		ok = 0;
		if (s[i] == pattern[0]) {
			k = i;
			for (j = 1; j < size_pattern; j++) {
				if (s[++k] != pattern[j])
					ok = 1;
			}
		}
		else
			ok = 1;
	}

	c = s;

	if (ok == 0) {
		strcpy(s + i - 1, s + i + size_pattern - 1);
		c = s;
	}
	return c;
}

int main() {
	char s[] = "Ana are mere";
	char* pattern = "re";

	// Decomentati linia dupa ce ati implementat functia delete_first.
	printf("%s\n", delete_first(s, pattern));

	return 0;
}
