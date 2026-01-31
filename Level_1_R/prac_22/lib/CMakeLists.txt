add_library(head_so SHARED header.cpp)
add_library(head_a STATIC header.cpp)

set_target_properties(head_so PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})
set_target_properties(head_a PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})

target_include_directories(head_so PRIVATE ${INC_DIR})
target_include_directories(head_a PRIVATE ${INC_DIR})

if(TCP)
target_compile_definitions(head_so PUBLIC TCP)
else()
target_compile_definitions(head_a PUBLIC UDP)
endif()
