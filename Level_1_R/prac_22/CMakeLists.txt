cmake_minimum_required(VERSION 3.10)

project(CMAKE_PRC20)

message("User = $ENV{user}")

set(INC_DIR ${CMAKE_SOURCE_DIR}/include)

message("INC_DIR = ${INC_DIR}" )
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/library)

file(GLOB OUT_DIR ${CMAKE_SOURCE_DIR}/build/output)
set(LIB_DIR ${CMAKE_SOURCE_DIR}/build/library)

set(MODE "TCP" CACHE STRING "TCP TURNED ON By Default")

message("Mode set as ${MODE}")

if(MODE STREQUAL TCP)
option(TCP "Turned on By Default" ON)
else()
option(UDP "Turned on By Default" UDP)
endif()

add_subdirectory(lib)
add_subdirectory(app)
