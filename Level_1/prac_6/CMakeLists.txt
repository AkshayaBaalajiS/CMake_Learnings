cmake_minimum_required(VERSION 3.10)

PROJECT(Cmake_level_1_prac_6)

include_directories(${CMAKE_SOURCE_DIR}/include)

add_subdirectory(${CMAKE_SOURCE_DIR}/src)
add_subdirectory(${CMAKE_SOURCE_DIR}/app)