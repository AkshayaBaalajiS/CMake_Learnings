cmake_minimum_required(VERSION 3.10)

project(CMAKE_PRAC15)

file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/library)

set(INC_DIR ${CMAKE_SOURCE_DIR}/include)

set(ALGO_MODE "RELEASE_MODE" CACHE STRING "By default Set to RELEASE_MODE")

if(ALGO_MODE STREQUAL "RELEASE_MODE")
option(DEBUG_MODE "Set to OFF " OFF)
endif()

if(ALGO_MODE STREQUAL "DEBUG_MODE")
option(DEBUG_MODE "Set to ON " ON)
endif()

option(GNU_COMPILER "By default OFF " OFF)


set(OUTPUT_DIR ${CMAKE_SOURCE_DIR}/build/output)

file(GLOB LIB_DIR  ${CMAKE_SOURCE_DIR}/build/library)

add_subdirectory(lib)

add_subdirectory(app)
