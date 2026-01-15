add_library(class SHARED class.cpp)

target_compile_definitions(class INTERFACE HEADER_GUARD 
								INTERFACE ENABLE_LOG)