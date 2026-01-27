add_library(feature_sha SHARED feature.cpp)
add_library(feature_sta STATIC feature.cpp)

set_target_properties(feature_sha PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})
set_target_properties(feature_sta PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})

target_include_directories(feature_sha PUBLIC ${INC_DIR})
target_include_directories(feature_sta PUBLIC ${INC_DIR})

if(DEBUG_MODE)
target_compile_definitions(feature_sha PUBLIC DEBUG_MODE)
endif()