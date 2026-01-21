add_library(warnings SHARED warnings.cpp)
add_library(warnings_sta STATIC warnings.cpp)

set_target_properties(warnings PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})

target_compile_options(warnings PUBLIC -Wall -Wextra -Wunused-variable)
#-Wall → enable common warnings

target_include_directories(warnings PRIVATE ${INC_DIR})
target_include_directories(warnings_sta PRIVATE ${INC_DIR})
