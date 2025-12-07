#include "string_utils.hpp"
#include <algorithm>

std::string to_upper(const std::string& str)
{
    std::string out = str;
    std::transform(out.begin(), out.end(), out.begin(), ::toupper);
    return out;
}

std::string to_lower(const std::string& str)
{
    std::string out = str;
    std::transform(out.begin(), out.end(), out.begin(), ::tolower);
    return out;
}
