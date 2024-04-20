include_guard(GLOBAL)
cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
# Module
project("template.cmake")
# Template function
function(template)
    message(STATUS "Hello world!")
endfunction()
# Skip if module
if(NOT PROJECT_IS_TOP_LEVEL)
    return()
endif()
# Test
template()
