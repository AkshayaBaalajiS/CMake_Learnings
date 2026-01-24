add_executable(server server.cpp)
add_executable(client client.cpp)

target_link_libraries(server PUBLIC struc_so)
target_link_libraries(client PUBLIC struc_so)

set_target_properties(server PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUT_DIR})
set_target_properties(client PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUT_DIR})
