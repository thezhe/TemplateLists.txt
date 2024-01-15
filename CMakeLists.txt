#[[
CI entrypoint.
Usage: See .github/workflows/main.yml.
]]

# Project
cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
enable_testing()
project(template.cmake)
# Test
add_test(
    NAME testexec
    COMMAND "${CMAKE_COMMAND}" -P "template.cmake"
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
)
