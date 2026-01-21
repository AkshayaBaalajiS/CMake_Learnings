add_executable(output main.cpp)

target_include_directories(output PRIVATE ${INC_DIR} )
# we are including the dir to output exe  

set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_DIR})

#target_link_libraries(output warnings)
target_link_libraries(output PRIVATE warnings)

#cmake treat the above as 
# target_link_libraries(output PRIVATE warnings) 
