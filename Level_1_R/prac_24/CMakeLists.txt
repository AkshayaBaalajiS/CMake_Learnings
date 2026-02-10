cmake_minimum_required(VERSION 3.10)

project(CMAKE_24)

file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/output)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/library)

set(INC_DIR ${CMAKE_SOURCE_DIR}/include)
set(SRC_DIR ${CMAKE_SOURCE_DIR}/app)
file(GLOB OP_DIR ${CMAKE_SOURCE_DIR}/output)
set( LIB_DIR ${CMAKE_SOURCE_DIR}/library)

set(MODE "TCP" CACHE STRING "Mode is by default TCP")

if(MODE STREQUAL "TCP")
option(TCP "Set to ON " ON)
else()
option (TCP "Set to OFF" OFF)
endif()

add_subdirectory(lib)
add_subdirectory(app)