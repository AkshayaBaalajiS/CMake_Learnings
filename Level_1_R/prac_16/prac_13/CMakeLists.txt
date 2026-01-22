cmake_minimum_required(VERSION 3.10)

project(CMAKE_PRAC15)

file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/library)

set(INC_DIR ${CMAKE_SOURCE_DIR}/include)

option(DEBUG_MODE "By default ON " ON)
option(GNU_COMPILER "By default OFF " OFF)


set(OUTPUT_DIR ${CMAKE_SOURCE_DIR}/build/output)

file(GLOB LIB_DIR  ${CMAKE_SOURCE_DIR}/build/library)

add_subdirectory(lib)

add_subdirectory(app)
