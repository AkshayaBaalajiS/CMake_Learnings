cmake_minimum_required(VERSION 3.19)

project(CMAKE_Proj3)

include_directories(${CMAKE_SOURCE_DIR}/include)

file(GLOB SOURCES ${CMAKE_SOURCE_DIR}/src/*.cpp)

add_executable(output ${SOURCES})