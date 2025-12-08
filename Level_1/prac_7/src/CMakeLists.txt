file(GLOB files_1 *.cpp)
add_library(dynamic_lib SHARED ${files_1})
target_compile_definitions(dynamic_lib PRIVATE ENABLE_FEATURE)