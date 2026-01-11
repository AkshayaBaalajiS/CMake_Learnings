cmake_minimum_required(VERSION 3.10)

project(Cmake_project_4)

message("CMAKE done in this fodler is having a detailed cmake to do this please refer that")

file( GLOB MAIN_PATH ${CMAKE_SOURCE_DIR})


include_directories(${MAIN_PATH}/include)

add_subdirectory(lib)

add_subdirectory(app)

