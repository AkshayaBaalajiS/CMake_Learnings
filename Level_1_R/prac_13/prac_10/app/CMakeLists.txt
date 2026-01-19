add_executable(output main.cpp)

#set_target_properties(output PROPERTIES RUILD_RPATH LIB_PATH)
#for the above command we are not using the ${} path to be given so a directory is created on that name and the exe is put there 

set_target_properties(output PROPERTIES RUILD_RPATH ${LIB_PATH})
set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_PATH})


#set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY OUTPUT_PATH)
#for the above command we are not using the ${} path to be given so a directory is created on that name and the exe is put there 

target_link_libraries(output math_utils )

target_include_directories(output PUBLIC ${GLOB_PATH}/include)

