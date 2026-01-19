cmake_minimum_required(VERSION 3.19)

project(CMAKE_PRAC_13)

message("No include_directories in the cmake cause we are using the target_include_directories")

set(GLOB_PATH ${CMAKE_SOURCE_DIR})

set(OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build)

#file(LIB_PATH GLOB ${CMAKE_SOURCE_DIR}/build)
file(GLOB LIB_PATH  ${CMAKE_SOURCE_DIR}/build)
#set(LIB_PATH  ${CMAKE_SOURCE_DIR}/build)

add_subdirectory(lib)

add_subdirectory(app)