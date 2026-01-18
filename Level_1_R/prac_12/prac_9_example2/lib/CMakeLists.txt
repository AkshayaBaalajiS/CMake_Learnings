add_library(algo SHARED algorithm.cpp)

set_target_properties(algo PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})

if(FAST_MODE)
target_compile_definitions(algo PUBLIC FAST_MODE)
endif()