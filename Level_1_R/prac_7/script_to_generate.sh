#!/bin/bash

PROJECT=prac_7

echo "Creating Practice 7 (Shared Library + RPATH) structure..."

mkdir -p $PROJECT/{include,lib,app}

# =====================
# Header
# =====================
cat <<EOF > $PROJECT/include/logger.hpp
#pragma once

void log_message();
EOF

# =====================
# Shared library source
# =====================
cat <<EOF > $PROJECT/lib/logger.cpp
#include <iostream>
#include "logger.hpp"

void log_message()
{
    std::cout << "Logger from shared library" << std::endl;
}
EOF

# =====================
# App source
# =====================
cat <<EOF > $PROJECT/app/main.cpp
#include "logger.hpp"

int main()
{
    log_message();
    return 0;
}
EOF

# =====================
# Empty CMakeLists (you write logic)
# =====================
touch $PROJECT/CMakeLists.txt
touch $PROJECT/lib/CMakeLists.txt
touch $PROJECT/app/CMakeLists.txt

echo "Practice 7 setup complete!"
echo "Your tasks:"
echo "  - Build SHARED library"
echo "  - Build executable"
echo "  - Link them"
echo "  - Make executable run WITHOUT exporting LD_LIBRARY_PATH"
