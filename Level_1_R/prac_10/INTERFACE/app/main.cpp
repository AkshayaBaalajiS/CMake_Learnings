#include "header.hpp"

#ifdef HEADER_GUARD
int number = 234;
#else
int number = 32;
#endif

using namespace std;

// the same we have added in the class.cpp file but due to INTERFACE applied it does not be applied on the lib and it iwll be abail to all files linking it 
#ifdef ENABLE_LOG
void log_message()
{
    std::cout << "log\n";
}
#endif

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