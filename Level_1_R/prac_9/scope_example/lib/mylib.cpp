#include "mylib.hpp"

/* PRIVATE macro: only in cpp */
#ifdef INTERNAL_DEBUG
static void debug()
{
    std::cout << "Internal debug enabled\n";
}
#endif

#ifdef ENABLE_LOG
void log_message()
{
    std::cout << "Logging from library\n";
}
#endif

void do_work()
{
#ifdef INTERNAL_DEBUG
    debug();
#endif
    std::cout << "Doing work\n";
}
