#pragma once 
#include <iostream>
using namespace std;

#ifdef HEADER_GUARD 
extern int number ; //= 234 ;
#else 
extern int number ;//= 32;
#endif 

#ifdef ENABLE_LOG
void log_message();
#endif


class A 
{
	public:
		int inumber ;
		float fnumber;
		
		A() ;
		
		~A() ;
		
		#ifdef HEADER_GUARD
		void set();
		#else
		void set();
		#endif

};