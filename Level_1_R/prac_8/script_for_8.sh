#!/bin/bash

PROJECT=prac_8

echo "Creating Practice 8 (Compile-time macros) structure..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Header
# =====================
cat <<EOF > $PROJECT/include/config.hpp
#pragma once

void show_config();
EOF

# =====================
# Library source
# =====================
cat <<EOF > $PROJECT/lib/config.cpp
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
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include "config.hpp"

int main()
{
    show_config();
    return 0;
}
EOF

# =====================
# Empty CMakeLists (you write logic)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Practice 8 setup complete!"
echo "Your tasks:"
echo "  - Create a library from config.cpp"
echo "  - Create an executable"
echo "  - Control ENABLE_LOG and DEBUG_MODE from CMake"
echo "  - DO NOT change C++ code"
