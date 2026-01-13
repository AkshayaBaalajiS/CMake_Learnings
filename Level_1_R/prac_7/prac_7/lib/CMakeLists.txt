add_library(logger SHARED logger.cpp)


# fkor understanding the export zi am commenting this cause the exe and the lib are in ssame dir so no issue arraises 
#set_target_properties(logger PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${OUTPUT_LOC})

#Linux dynamic loader rule (VERY IMPORTANT):

#The loader always searches the executable’s directory FIRST