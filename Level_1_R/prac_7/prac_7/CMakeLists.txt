cmake_minimum_required(VERSION 3.19)

project(CMAKE_PRAC7)

set (OUTPUT_LOC ${CMAKE_BINARY_DIR})

include_directories(${CMAKE_SOURCE_DIR}/include)


set(CMAKE_SKIP_BUILD_RPATH TRUE)


add_subdirectory(lib)

add_subdirectory(app)

