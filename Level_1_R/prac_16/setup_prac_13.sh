#!/bin/bash

PROJECT=prac_13

echo "Creating Practice 13 (Generator Expressions)..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Public header
# =====================
cat <<EOF > $PROJECT/include/feature.hpp
#pragma once

void show_mode();
EOF

# =====================
# Library source
# =====================
cat <<EOF > $PROJECT/lib/feature.cpp
#include <iostream>
#include "feature.hpp"

void show_mode()
{
#ifdef DEBUG_MODE
    std::cout << "DEBUG mode enabled" << std::endl;
#else
    std::cout << "RELEASE mode enabled" << std::endl;
#endif

#ifdef GNU_COMPILER
    std::cout << "Compiled with GCC" << std::endl;
#endif
}
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include "feature.hpp"

int main()
{
    show_mode();
    return 0;
}
EOF

# =====================
# Empty CMakeLists (YOU write logic)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Practice 13 setup complete!"
echo
echo "Your tasks:"
echo "1) Use generator expressions to define DEBUG_MODE only in Debug builds"
echo "2) Define GNU_COMPILER only when using GCC"
echo "3) Do NOT use if() for these conditions"
echo "4) Use target_compile_definitions() with generator expressions"
