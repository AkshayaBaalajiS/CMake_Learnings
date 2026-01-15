add_library(config INTERFACE)

# INTERFACE -> only consumers see this
target_compile_definitions(config INTERFACE USE_FAST_MODE)
