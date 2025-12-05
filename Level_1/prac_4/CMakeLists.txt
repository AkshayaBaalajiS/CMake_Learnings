cmake_minimum_required(VERSION 3.10)

PROJECT(Cmake_Level1_prac4)

include_directories(${CMAKE_SOURCE_DIR}/include)

set(CMAKE_OUTPUT ${CMAKE_SOURCE_DIR}/build)

file (GLOB CPP_FILES ${CMAKE_SOURCE_DIR}/src/*.cpp )

add_subdirectory(${CMAKE_SOURCE_DIR}/src)