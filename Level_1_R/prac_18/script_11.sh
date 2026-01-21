#!/bin/bash

PROJECT=vars_prac_full

echo "Creating full Variables & Expressions practice project..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Public header
# =====================
cat <<EOF > $PROJECT/include/mode.hpp
#pragma once

void show_mode();
EOF

# =====================
# Library source
# =====================
cat <<EOF > $PROJECT/lib/mode.cpp
#include <iostream>
#include "mode.hpp"

void show_mode()
{
#ifdef MODE_FAST
    std::cout << "FAST mode selected" << std::endl;
#else
    std::cout << "SAFE mode selected" << std::endl;
#endif

#ifdef ENABLE_LOG
    std::cout << "Logging enabled" << std::endl;
#else
    std::cout << "Logging disabled" << std::endl;
#endif
}
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include "mode.hpp"

int main()
{
    show_mode();
    return 0;
}
EOF

# =====================
# Empty CMakeLists (YOU WRITE ALL)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Project created successfully!"
echo
echo "Your CMake tasks:"
echo "1) In parent CMakeLists.txt:"
echo "   - Define a STRING cache variable MODE (SAFE / FAST)"
echo "   - Define a BOOL option ENABLE_LOG"
echo "   - Print both values using message(STATUS ...)"
echo
echo "2) In lib/CMakeLists.txt:"
echo "   - Create a library from mode.cpp"
echo "   - Add include directory correctly"
echo "   - If MODE == FAST -> define MODE_FAST"
echo "   - If ENABLE_LOG ON -> define ENABLE_LOG"
echo "   - Choose PRIVATE / PUBLIC scopes correctly"
echo
echo "3) In app/CMakeLists.txt:"
echo "   - Create executable"
echo "   - Link the library"
echo
echo "Test with:"
echo "  cmake .."
echo "  cmake -DMODE=FAST .."
echo "  cmake -DENABLE_LOG=ON .."
echo "  cmake -DMODE=FAST -DENABLE_LOG=ON .."
