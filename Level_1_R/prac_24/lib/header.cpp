#include "header.hpp"
using namespace std;

ostream & operator<<(ostream & out, DataStructure & ptr)
{
	out <<"--"<< "Object printed is " << ptr.a <<"  " << ptr.b << "  " << ptr.c <<"--"<<endl;
	return out;
}