add_library(class SHARED class.cpp)

target_compile_definitions(class PUBLIC HEADER_GUARD 
								PUBLIC ENABLE_LOG)