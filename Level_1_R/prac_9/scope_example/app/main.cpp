#include "mylib.hpp"

#ifdef USE_FAST_MODE
#define MODE "FAST"
#else
#define MODE "NORMAL"
#endif

int main()
{
#ifdef ENABLE_LOG
    log_message();
#endif

    do_work();

    std::cout << "Mode: " << MODE << std::endl;
    return 0;
}
