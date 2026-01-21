cmake_minimum_required(VERSION 3.19)

project(CMAKE_PROJ13)

# we are not using the include_directory cause we are using the target_include_directories 

set(INC_DIR ${CMAKE_SOURCE_DIR}/include)

file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/library)

file(GLOB OUTPUT_DIR ${CMAKE_SOURCE_DIR}/build/output)
set(LIB_DIR ${CMAKE_SOURCE_DIR}/build/library)

add_subdirectory(lib)
add_subdirectory(app)

