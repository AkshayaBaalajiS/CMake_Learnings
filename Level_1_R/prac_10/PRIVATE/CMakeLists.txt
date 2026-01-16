cmake_minimum_required(VERSION 3.19)

project(CMAKE_PARC9)

include_directories(${CMAKE_SOURCE_DIR}/include)

add_subdirectory(lib)

add_subdirectory(app)
