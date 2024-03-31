#[[
Assert `$ENV{TEST}` equals `"TEST"`

    cmake -P template.cmake
]]

# Settings
cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
# Validate
string(COMPARE NOTEQUAL "$ENV{TEST}" "TEST" exit_failure)
if(exit_failure)
    message(FATAL_ERROR "\$ENV{TEST} == \"$ENV{TEST}\" != \"TEST\"")
endif()
