#include <iostream>
#include "string_utils.hpp"

int main()
{
    std::string text = "HeLLo WorLD";

    std::cout << "Upper : " << to_upper(text) << "\n";
    std::cout << "Lower : " << to_lower(text) << "\n";

    return 0;
}
