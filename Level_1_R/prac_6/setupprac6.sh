#!/bin/bash

PROJECT=prac_6

echo "Creating Practice 6 (Shared Library) structure..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Header file
# =====================
cat <<EOF > $PROJECT/include/utils.hpp
#pragma once

int multiply(int a, int b);
EOF

# =====================
# Shared library source
# =====================
cat <<EOF > $PROJECT/lib/utils.cpp
#include "utils.hpp"

int multiply(int a, int b)
{
    return a * b;
}
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include <iostream>
#include "utils.hpp"

int main()
{
    std::cout << "Multiply: " << multiply(6, 7) << "\\n";
    return 0;
}
EOF

# =====================
# Empty CMakeLists (you write logic)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Practice 6 setup complete!"
echo "Now write CMake to build a SHARED library."
