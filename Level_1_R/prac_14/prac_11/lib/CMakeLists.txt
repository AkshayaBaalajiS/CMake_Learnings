add_library(api_sha SHARED api.cpp)

add_library(api_stat STATIC api.cpp)

set_target_properties(api_sha PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})

target_include_directories(api_sha PRIVATE ${INCLUDE_DIR})
# we are including the above lib in the main output and it is not finding the header due to PRIVATE used 
#target_include_directories(api_sha PUBLIC ${INCLUDE_DIR})
# instead of making it public we can also add te include dire on the exe 


# 2 target_include_directories on same file is also possible 
#CMake does not “override” scopes. Each call just adds more usage requirements.


#fatal error: api.hpp: No such file or directory
# cause at first we are not including the header for the static lib 
target_include_directories(api_stat PRIVATE ${INCLUDE_DIR})