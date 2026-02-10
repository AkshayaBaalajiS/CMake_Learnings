add_executable(server server.cpp)
add_executable(client client.cpp)


target_include_directories(server PRIVATE ${INC_DIR})
target_include_directories(client PRIVATE ${INC_DIR})

set_target_properties(server PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OP_DIR})
set_target_properties(client PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OP_DIR})


target_link_libraries(server header_sh)
target_link_libraries(client header_sh)
