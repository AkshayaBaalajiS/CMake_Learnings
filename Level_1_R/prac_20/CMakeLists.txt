cmake_minimum_required(VERSION 3.19)

project(CMAKE_PRAC20)

set(INC_DIR ${CMAKE_SOURCE_DIR}/include)

file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/library)

file(GLOB LIB_DIR ${CMAKE_SOURCE_DIR}/build/library)
set(OUTPUT_DIR ${CMAKE_SOURCE_DIR}/build/output)

set(MODE "UDP" CACHE STRING "Default UDP provided")

if(MODE STREQUAL TCP)
option(TCP "TCP Turned ON  "  ON)
else()
option(TCP "TCP turned OFF" OFF)
endif()

add_subdirectory(lib)

add_subdirectory(app)