add_executable(output main.cpp)

set_target_properties(output PROPERTIES BUILD_RPATH ${BUILD_PATH})

target_link_libraries(output config)