#!/bin/bash

PROJECT=prac_10

echo "Creating Practice 10 (target_include_directories)..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Public header
# =====================
cat <<EOF > $PROJECT/include/math_utils.hpp
#pragma once

int add(int a, int b);
EOF

# =====================
# Library source
# =====================
cat <<EOF > $PROJECT/lib/math_utils.cpp
#include "math_utils.hpp"

int add(int a, int b)
{
    return a + b;
}
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include <iostream>
#include "math_utils.hpp"

int main()
{
    std::cout << "Sum = " << add(3, 5) << std::endl;
    return 0;
}
EOF

# =====================
# Empty CMakeLists (YOU write logic)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Practice 10 setup complete!"
echo
echo "Your tasks:"
echo "1) Create a library from math_utils.cpp"
echo "2) Use target_include_directories() correctly"
echo "3) Decide PRIVATE vs PUBLIC scope for include/"
echo "4) Build and run successfully"
