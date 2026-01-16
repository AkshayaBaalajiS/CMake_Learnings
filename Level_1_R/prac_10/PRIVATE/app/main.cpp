#include "header.hpp"

#ifdef HEADER_GUARD
int number = 234;
#else
int number = 32;
#endif

using namespace std;

int main()
{
	cout<<"MACRO PRAC \n";
	A obj;
	cout<<"NUmber = " << number ;

	obj.set();
	#ifdef ENABLE_LOG
    log_message();
	#endif
}