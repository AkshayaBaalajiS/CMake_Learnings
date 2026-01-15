add_library(mylib mylib.cpp)

target_include_directories(mylib PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

# PRIVATE -> used only in cpp
# PUBLIC  -> used in header + app
target_compile_definitions(mylib
    PRIVATE INTERNAL_DEBUG
    PUBLIC  ENABLE_LOG
)
