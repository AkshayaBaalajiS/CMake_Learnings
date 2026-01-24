add_library(struc_so SHARED structure.cpp)
add_library(struc_a STATIC structure.cpp)

set_target_properties(struc_so PROPERTIES LIBRARY_OUTPUT_DIR ${CMAKE_SOURCE_DIR}/build/library)
set_target_properties(struc_a PROPERTIES LIBRARY_OUTPUT_DIR ${CMAKE_SOURCE_DIR}/build/library)

if(TCP)
target_compile_definitions(struc_so PUBLIC TCP)
else()
target_compile_definitions(struc_so PUBLIC UDP)
endif()

target_include_directories(struc_so PUBLIC ${INC_DIR})
target_include_directories(struc_a PUBLIC ${INC_DIR})
