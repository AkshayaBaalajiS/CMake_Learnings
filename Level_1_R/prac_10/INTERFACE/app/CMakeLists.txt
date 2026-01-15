add_executable(output main.cpp)

set_target_properties(output PROPERTIES BUILD_RPATH ${CMAKE_SOURCE_DIR}/build/lib)

target_link_libraries(output class)

message ("Linkind dnde ${CMAKE_SOURCE_DIR}/build/lib")