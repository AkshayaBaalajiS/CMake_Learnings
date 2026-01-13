add_executable(output main.cpp )

#set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_LOC})
set_target_properties(output PROPERTIES BUILD_RPATH ${OUTPUT_LOC}/lib)

target_link_libraries(output logger)

# use this on the exe to list the lib it linked 
# readelf -d app/output | grep -i path
