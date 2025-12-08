file (GLOB files *.cpp)
add_executable(output ${files})

set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${output_dir})

target_link_libraries(output dynamic_lib)