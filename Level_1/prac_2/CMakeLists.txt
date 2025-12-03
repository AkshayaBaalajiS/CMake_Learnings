cmake_minimum_required(VERSION 3.10)

PROJECT(CMake_Level1_prac2)

include_directories(${CMAKE_SOURCE_DIR}/include)

file(GLOB cpp_files ${CMAKE_SOURCE_DIR}/src/*.cpp)

add_executable(app ${cpp_files})