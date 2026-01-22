add_library(header SHARED header.cpp)

set_target_properties(header PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})

target_include_directories(header PUBLIC ${INC_DIR})

if(TCP)
target_compile_definitions(header PUBLIC TCP)
else()
target_compile_definitions(header PUBLIC UDP)
endif()
