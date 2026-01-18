add_executable(output main.cpp)

set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR})
set_target_properties(output PROPERTIES BUILD_RPATH ${LIB_DIR})

target_link_libraries(output algo)


