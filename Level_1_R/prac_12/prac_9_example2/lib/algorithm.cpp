#include <iostream>
#include "algorithm.hpp"

void run_algorithm()
{
#ifdef FAST_MODE
    std::cout << "Using FAST algorithm" << std::endl;
#else
    std::cout << "Using SAFE algorithm" << std::endl;
#endif
}
