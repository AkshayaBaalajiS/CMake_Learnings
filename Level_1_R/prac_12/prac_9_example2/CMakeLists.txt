cmake_minimum_required(VERSION 3.19)

project(CMAKE_PRAC_9_II)

include_directories(${CMAKE_SOURCE_DIR}/include)

set(OUTPUT_DIR ${CMAKE_SOURCE_DIR}/build)

file(GLOB LIB_DIR ${CMAKE_BINARY_DIR})

option(FAST_MODE "By default ON" ON )

message("MACRO FAST_MODE = ${FAST_MODE}")

message("USER using this  = $ENV{user}" )

add_subdirectory(lib)


add_subdirectory(app)