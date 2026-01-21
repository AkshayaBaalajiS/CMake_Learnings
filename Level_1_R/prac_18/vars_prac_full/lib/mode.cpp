#include <iostream>
#include "mode.hpp"

void show_mode()
{
#ifdef MODE_FAST
    std::cout << "FAST mode selected" << std::endl;
#else
    std::cout << "SAFE mode selected" << std::endl;
#endif

#ifdef ENABLE_LOG
    std::cout << "Logging enabled" << std::endl;
#else
    std::cout << "Logging disabled" << std::endl;
#endif
}
