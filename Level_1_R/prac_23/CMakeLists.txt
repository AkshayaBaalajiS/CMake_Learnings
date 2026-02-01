cmake_minimum_required(VERSION 3.19)

project(CMAKE_Prac23)

add_executable(op main.cpp)

file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/output)

set_target_properties(op PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/output)