#include <iostream>
#include "feature.hpp"

void print_feature_status()
{
#ifdef ENABLE_FEATURE
    std::cout << "Feature ENABLED\n";
#else
    std::cout << "Feature DISABLED\n";
#endif
}
