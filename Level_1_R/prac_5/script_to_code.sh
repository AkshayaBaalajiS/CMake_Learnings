#!/bin/bash

PROJECT=prac_5

echo "Creating Practice 5 structure..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Header file
# =====================
cat <<EOF > $PROJECT/include/calc.hpp
#pragma once

int add(int a, int b);
int sub(int a, int b);
EOF

# =====================
# Library source
# =====================
cat <<EOF > $PROJECT/lib/calc.cpp
#include "calc.hpp"

int add(int a, int b)
{
    return a + b;
}

int sub(int a, int b)
{
    return a - b;
}
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include <iostream>
#include "calc.hpp"

int main()
{
    std::cout << "Add: " << add(10, 5) << "\\n";
    std::cout << "Sub: " << sub(10, 5) << "\\n";
    return 0;
}
EOF

# =====================
# Empty CMakeLists (you fill logic)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Practice 5 setup complete!"
echo "Now write your CMake logic."
