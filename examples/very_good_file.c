#include <stdio.h>
#include <string.h>


//
// TYPES
//

/*
Definition of a structure
*/
typedef struct {
	int   anInt;                                    // an int inside the type
	float aFloat;                                   // a float inside the type
	unsigned long (*functionPointer)(const char *); // a function pointer
} myType;

/*
Definition of an enum
*/
typedef enum { FALSE, TRUE } myBool;


//
// FUNCTIONS
//

// This function does something, but I don't know what :)
int test_function(int a, int b) {
	int i;
	int j = 10;

	for (i = 0; i < a; i++) {
		// A comment
		if (i == b)
			return i;
		else
			j++;
	}

	// HELLO
	while (a != b && a < b) {
		a += 1;
	}

	return (a);
}


//
// MAIN FUNCTION
//

int main() {
	int    a, b, c, d, e, f, g;
	float  h = 0, i = 2, j;
	char * str       = "Hello, how are you?";
	int    str_len   = strlen(str);
	float  bar       = 2.0;
	int    value     = (int) bar;
	myType variable1 = {5, 3.0, strlen};
	myBool variable2 = FALSE;

	switch (value) {
		case 1: return 0;
		case 2: return 1;
		case 3: return 2;
		default: printf("Nothing to do");
	}

	printf("%i", test_function(10, 20));

	printf("%s - %i - %f\n", str, str_len, bar);
	printf("{%i - %f} - %i\n", variable1.anInt, variable1.aFloat, variable2);
}
