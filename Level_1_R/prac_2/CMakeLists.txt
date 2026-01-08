cmake_minimum_required(VERSION 3.19)

PROJECT(CMAKE_PRO2)

file (GLOB FILES ${CMAKE_SOURCE_DIR}/*.cpp )

add_executable(output ${FILES})

#add_executable(output ${CMAKE_SOURCE_DIR}/main.cpp ${CMAKE_SOURCE_DIR}/add.cpp)

message("Executable generated on  ${RUNTIME_OUTPUT_DIRECTORY}")
