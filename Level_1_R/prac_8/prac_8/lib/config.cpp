#include <iostream>
#include "config.hpp"

void show_config()
{
#ifdef ENABLE_LOG
    std::cout << "Logging ENABLED" << std::endl;
#else
    std::cout << "Logging DISABLED" << std::endl;
#endif

#ifdef DEBUG_MODE
    std::cout << "Debug mode ON" << std::endl;
#else
    std::cout << "Debug mode OFF" << std::endl;
#endif
}
