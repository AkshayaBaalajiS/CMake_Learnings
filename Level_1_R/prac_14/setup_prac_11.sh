#!/bin/bash

PROJECT=prac_11

echo "Creating Practice 11 (Wrong include scope)..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Public header
# =====================
cat <<EOF > $PROJECT/include/api.hpp
#pragma once

void api_call();
EOF

# =====================
# Library source
# =====================
cat <<EOF > $PROJECT/lib/api.cpp
#include <iostream>
#include "api.hpp"

void api_call()
{
    std::cout << "API call executed" << std::endl;
}
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include "api.hpp"

int main()
{
    api_call();
    return 0;
}
EOF

# =====================
# Empty CMakeLists (YOU write logic)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Practice 11 setup complete!"
echo
echo "Your tasks:"
echo "1) Create a library from api.cpp"
echo "2) Add include directory with WRONG scope first"
echo "3) Observe the build failure"
echo "4) Fix the scope and rebuild"

