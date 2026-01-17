add_library(features SHARED feature.cpp)

if(ENABLE_LOG)
target_compile_definitions(features PUBLIC ENABLE_LOG)
endif(ENABLE_LOG)

if(ENABLE_DEBUG)
target_compile_definitions(features PUBLIC ENABLE_DEBUG)
endif(ENABLE_DEBUG)


set_target_properties(features PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})