add_library(features SHARED feature.cpp)

if(ENABLE_LOG)
target_compile_definitions(features PUBLIC ENABLE_LOG)
endif(ENABLE_LOG)

if(ENABLE_DEBUG)
target_compile_definitions(features PUBLIC ENABLE_DEBUG)
endif()
#the above can also be done no diff in the two 
#endif(ENABLE_DEBUG)# helps you remember what is closing


set_target_properties(features PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})