#include <iostream>
#include "warnings.hpp"

void do_task()
{
    int unused_var = 42; // will trigger warning with -Wall
    std::cout << "Task done" << std::endl;
}
