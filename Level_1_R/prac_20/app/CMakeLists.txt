add_executable(server server.cpp)
add_executable(client client.cpp)

set_target_properties(server PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR})
set_target_properties(client PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR})

target_link_libraries(server PRIVATE header)
target_link_libraries(client PRIVATE header) 

# we are not including the macro or the iclude dir cause we re including ghe lib where all get defined 