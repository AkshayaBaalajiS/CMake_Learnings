#include <iostream>
#include "feature.hpp"

void show_mode()
{
#ifdef DEBUG_MODE
    std::cout << "DEBUG mode enabled" << std::endl;
#else
    std::cout << "RELEASE mode enabled" << std::endl;
#endif

#ifdef GNU_COMPILER
    std::cout << "Compiled with GCC" << std::endl;
#endif
}
