add_library(config SHARED config.cpp)

set_target_properties(config PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${BUILD_PATH})
