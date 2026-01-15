#include "header.hpp"
using namespace std;



A::A()
{
	cout<<"A class constructor \n";
}

A::~A()
{
	cout<<"A class destructor \n";
}

#ifdef HEADER_GUARD
void A::set()
{
	cout<<"Header Guard set function \n";
	cout<<"Values are 10 and 20 \n";
	inumber = 10 ;
	fnumber = 20;
	
}
#else
void A::set()
{
	cout<<"NO Guard set function \n";
	cout<<"Values are 50 and 60 \n";
	inumber = 10 ;
	fnumber = 20;
}
#endif


#ifdef ENABLE_LOG
void log_message()
{
    std::cout << "log\n";
}
#endif
