add_library(math_utils SHARED math_utils.cpp)
add_library(math_utils_sta STATIC math_utils.cpp)

set_target_properties(math_utils PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${LIB_PATH} )


#set_target_properties(math_utils PROPERTIES LIBRARY_OUTPUT_DIRECTORY LIB_PATH )
#for the above command we are not using the ${} path to be given so a directory is created on that name and the exe is put there 


target_include_directories(math_utils PUBLIC ${GLOB_PATH}/include)
target_include_directories(math_utils_sta PUBLIC ${GLOB_PATH}/include)
