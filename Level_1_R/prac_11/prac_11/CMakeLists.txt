cmake_minimum_required(VERSION 3.19)

project(CMAKE_prac_11)

include_directories(${CMAKE_SOURCE_DIR}/include)

set(LIB_DIR ${CMAKE_BINARY_DIR})

#set(OUTPUT_DIR ${CMAKE_BINARY_DIR})
file(GLOB OUTPUT_DIR ${CMAKE_BINARY_DIR})

option(ENABLE_LOG "By fefault ON" ON)
option(ENABLE_DEBUG "By default OFF" ON) 

message("MACRO ENABLE_LOG = ${ENABLE_LOG}")
message("MACRO ENABLE_DEBUG = ${ENABLE_DEBUG}")

add_subdirectory(lib)
add_subdirectory(app)
