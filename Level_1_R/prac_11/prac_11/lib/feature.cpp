#include <iostream>
#include "feature.hpp"

void show_features()
{
#ifdef ENABLE_LOG
    std::cout << "Logging ENABLED" << std::endl;
#else
    std::cout << "Logging DISABLED" << std::endl;
#endif

#ifdef ENABLE_DEBUG
    std::cout << "Debug ENABLED" << std::endl;
#else
    std::cout << "Debug DISABLED" << std::endl;
#endif
}
