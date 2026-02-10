#include <iostream>

struct DataStructure
{
	int a ;
	int b ;
	char c[100];
	friend std::ostream & operator<< (std::ostream & out, DataStructure & ptr);
};