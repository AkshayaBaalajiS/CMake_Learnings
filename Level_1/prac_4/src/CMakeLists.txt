cmake_minimum_required(VERSION 3.10)



add_executable(output ${CPP_FILES})

set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_OUTPUT})