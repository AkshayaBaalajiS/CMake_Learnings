cmake_minimum_required(VERSION 3.10)

PROJECT(Cmake_Learning_level_1_prac_5)

include_directories(${CMAKE_SOURCE_DIR}/include )

add_subdirectory(src)
add_subdirectory(app)