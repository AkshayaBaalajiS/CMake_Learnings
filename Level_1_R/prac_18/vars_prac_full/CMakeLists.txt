cmake_minimum_required(VERSION 3.19)

project(CMAKE_PRAC_13)

set(INC_DIR ${CMAKE_SOURCE_DIR}/include)

file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/output)
file(MAKE_DIRECTORY ${CMAKE_SOURCE_DIR}/build/library)

file(GLOB OUTPUT_DIR ${CMAKE_SOURCE_DIR}/build/output)
set(LIB_DIR ${CMAKE_SOURCE_DIR}/build/library)

# variable from cmkae 
set(MODE "SLOW" CACHE STRING "By default set to SLOW")

if(MODE STREQUAL FAST)
option(MODE_FAST "On is set " ON)
else()
option(MODE_FAST "On is set " OFF)
endif()

set(ENABLE_LOG "OFF" CACHE STRING "By default OFF" )

if(ENABLE_LOG STREQUAL ONN)
option(ENABLE_LOG  "Enable log is by default set to ON" ON)
else()
option(ENABLE_LOG  "Enable log is by default set to OFF" OFF)
endif()

add_subdirectory(lib)
add_subdirectory(app)