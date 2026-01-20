cmake_minimum_required(VERSION 3.19)

project(CMAKE_PRAC_11)

# we are not using the include_directories cause we are going to use the target_include_directories


file(GLOB INCLUDE_DIR ${CMAKE_SOURCE_DIR}/include)


file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output)
set(OUTPUT_LOC ${CMAKE_SOURCE_DIR}/build/output)
message("OUTPUT Location set to ${OUTPUT_LOC}")


file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/library)
file(GLOB LIB_DIR ${CMAKE_SOURCE_DIR}/build/library)
message("Library Location set to ${LIB_DIR}")

add_subdirectory(lib)

add_subdirectory(app)