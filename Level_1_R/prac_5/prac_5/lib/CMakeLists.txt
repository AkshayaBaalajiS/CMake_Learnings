add_library(calc STATIC calc.cpp)

set_target_properties(calc PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})