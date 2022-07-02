EN

largest_line() function (6b)

Create a function, int largest_line (const int size, int array[][size]), that finds the line with the largest number of numbers in a two-dimensional array


Input parameters

Const int size - input number, array size

Int array [] [size] - 2-dimensional input array


Return

The function returns the value corresponding to the index of the string (array) containing the largest sum of numbers. 
If the field contains multiple equal totals. The first is taken into account. 
The field is always two-dimensional square (it has the same number of rows and columns). However, if there is a NULL input array, the function returns -1.

SK

Funkcia Largest_line() (6b)

Vytvorte funkciu int largest_line (const int size, int array[][size]), ktorá nájde riadok s najväčším počtom čísel v dvojrozmernom poli


Vstupné parametre

const int size - vstupné číslo, veľkosť poľa

int pole [] [size] - 2-rozmerné vstupné pole


Návratová hodnota

Funkcia vráti hodnotu zodpovedajúcu indexu reťazca (poľa) obsahujúceho najväčší súčet čísel.
Ak pole obsahuje viac rovnakých súčtov. Prvý sa berie do úvahy.
Pole je vždy dvojrozmerný štvorec (má rovnaký počet riadkov a stĺpcov). Ak však existuje vstupné pole NULL, funkcia vráti -1.


Príklad pre main()
int array[2][2] = { {1,0}, {0,-3} };

printf("%d\n", largest_line(2, array));
// 0

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
EN

swap_case_2d() function (6b)

Create a function, void swap_case_2d(const int rows, const int cols, char strings[][cols]) which in each line 
of the 2d array (contains strings) converts all lowercase letters of the string to uppercase vice versa all uppercase letters in lowercase


Input parameters

• const int rows - input value, number of array lines

• cont int cols - input value, the number of columns in the array

• char strings[][cols] - input array, contains a string in each line


Return

The function does not return a value, but directly modifies the contents of the array strings. 
However, if there is a NULL input array, the function does not perform any operations (exits).

SK

funkcia swap_case_2d() (6b)

Vytvorte funkciu, void swap_case_2d (const int rows, const int cols, char strings[][cols]), ktorá v každom riadku
2D poľa (obsahuje reťazce) prevádza všetky malé písmená reťazca na veľké písmená a naopak všetky veľké písmená na malé písmena.


Vstupné parametre

• const int rows - vstupná hodnota, počet riadkov poľa

• cont int cols - vstupná hodnota, počet stĺpcov v poli

• char strings[][cols] - vstupné pole, ktoré obsahuje reťazec v každom riadku


Návratová hodnota

Funkcia nevracia hodnotu, ale priamo upravuje obsah reťazcov poľa. Ak však existuje vstupné pole NULL, funkcia nevykonáva žiadne operácie (ukončí sa).


Príklad pre main()
char strings[3][50] = {"hello WORLD!", "aHOJ", "Ahoj"};
swap_case_2d(3, 50, strings);
for(int i = 0; i < 3; i++){
    printf("%s", strings[i]);
}
printf("\n");
// HELLO world! Ahoj aHOJ










