cmake_minimum_required(VERSION 3.10)

PROJECT(cmkae_level_1_prac_7)

file( GLOB output_dir ${CMAKE_SOURCE_DIR}/build)
include_directories(${CMAKE_SOURCE_DIR}/include)

add_subdirectory(src)
add_subdirectory(app)
