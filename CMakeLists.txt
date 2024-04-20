include_guard(GLOBAL)
cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
project("template")
# Module/Script
function(template)
    message(STATUS "Hello world!")
endfunction()
# Test
if(NOT PROJECT_IS_TOP_LEVEL)
    return()
endif()
template()
