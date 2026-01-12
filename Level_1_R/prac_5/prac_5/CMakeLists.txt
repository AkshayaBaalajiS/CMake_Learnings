cmake_minimum_required(VERSION 3.19)

project(CMAKE_PRAC5)

message("Script is given to add the cpp and include files")

include_directories(${CMAKE_SOURCE_DIR}/include)

add_subdirectory(lib)

add_subdirectory(app)

