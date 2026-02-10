add_library(header_sh SHARED header.cpp)
add_library(header_st STATIC header.cpp)

set_target_properties(header_sh PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})
set_target_properties(header_st PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})

target_include_directories(header_sh PRIVATE ${INC_DIR})
target_include_directories(header_st PRIVATE ${INC_DIR})

if(TCP)
target_compile_definitions(header_sh PUBLIC TCP)
else()
target_compile_definitions(header_st PUBLIC UDP)
endif()