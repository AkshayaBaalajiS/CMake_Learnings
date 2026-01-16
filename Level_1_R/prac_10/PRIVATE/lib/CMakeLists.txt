add_library(class SHARED class.cpp)

target_compile_definitions(class PRIVATE HEADER_GUARD 
								PRIVATE ENABLE_LOG)