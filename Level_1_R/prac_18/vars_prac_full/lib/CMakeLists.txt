add_library(mode_so SHARED mode.cpp)
add_library(mode_a STATIC mode.cpp)

set_target_properties(mode_so PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})
set_target_properties(mode_a PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})

target_include_directories(mode_so PUBLIC ${INC_DIR})
target_include_directories(mode_a PUBLIC ${INC_DIR})

if(ENABLE_LOG)
target_compile_definitions(mode_so PUBLIC ENABLE_LOG)
else()
target_compile_definitions(mode_a PUBLIC ENABLE_LOG_OFF)
endif()

if(MODE_FAST)
target_compile_definitions(mode_so PUBLIC MODE_FAST)
else()
target_compile_definitions(mode_a PUBLIC MODE_FAST_OFF)
endif()

target_compile_options(mode_so PUBLIC -Wall)
