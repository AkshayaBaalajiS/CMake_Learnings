cmake_minimum_required(VERSION 3.19)

project(CMAKE_PROJ_21)

set(INC_DIR ${CMAKE_SOURCE_DIR}/include)

file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/library)

file(GLOB OUT_DIR ${CMAKE_SOURCE_DIR}/build/output)
set(LIB_DIR ${CMAKE_SOURCE_DIR}/build/library)

set(MODE "OFF" CACHE STRING "By default set to OFF")

if(MODE STREQUAL TCP)
option(TCP "Turned ON" ON)
else()
option(UDP "Turned ON" ON)
endif()

add_subdirectory(lib)
add_subdirectory(app)