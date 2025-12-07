file (GLOB source ${CMAKE_SOURCE_DIR}/app/*.cpp)

add_executable(output ${source})

target_link_libraries(output dynamic_lib)

set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)