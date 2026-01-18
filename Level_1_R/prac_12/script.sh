#!/bin/bash

PROJECT=prac_9_example2

echo "Creating Practice 9 - Example 2 (FAST vs SAFE mode)..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Header
# =====================
cat <<EOF > $PROJECT/include/algorithm.hpp
#pragma once

void run_algorithm();
EOF

# =====================
# Library source
# =====================
cat <<EOF > $PROJECT/lib/algorithm.cpp
#include <iostream>
#include "algorithm.hpp"

void run_algorithm()
{
#ifdef FAST_MODE
    std::cout << "Using FAST algorithm" << std::endl;
#else
    std::cout << "Using SAFE algorithm" << std::endl;
#endif
}
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include "algorithm.hpp"

int main()
{
    run_algorithm();
    return 0;
}
EOF

# =====================
# Empty CMakeLists (YOU write)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Project created successfully!"
echo
echo "Your tasks:"
echo "1) Create an option to enable FAST_MODE"
echo "2) Apply the macro in lib/CMakeLists.txt"
echo "3) Decide PUBLIC vs PRIVATE correctly"
echo "4) Build with and without -D flag"
