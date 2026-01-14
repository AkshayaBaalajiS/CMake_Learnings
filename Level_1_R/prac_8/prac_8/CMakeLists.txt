cmake_minimum_required(VERSION 3.10)

project(CMAKE_PRAC8)

include_directories(${CMAKE_SOURCE_DIR}/include)

set(BUILD_PATH ${CMAKE_BINARY_DIR})

file(GLOB SOURCE_DIR ${BUILD_PATH})

add_definitions(-DENABLE_LOG, -DDEBUG_MODE)

add_subdirectory(lib)

add_subdirectory(app)