add_executable(output main.cpp)

set_target_properties(output PROPERTIES BUILD_RPATH  ${LIB_DIR})

set_target_properties(output PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${OUTPUT_LOC})

target_link_libraries(output api_sha)

target_include_directories(output PUBLIC ${INCLUDE_DIR})
# error fatal error: api.hpp: No such file or directory in main.cpp
# this is happening cause we are using PRIVATE while lib creation and include 
# so here we are using target_include_directories instead of making PUBLIC on lib  
