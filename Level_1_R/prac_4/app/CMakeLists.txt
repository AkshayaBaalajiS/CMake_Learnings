
add_executable(output main.cpp)

set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})

#instead of mentioning path now we are going to make the lib on BINARY OUTPUT DIR 
#target_link_libraries(output ${CMAKE_BINARY_DIR}/lib/libmath.a)

target_link_libraries(output math)
