#[[
CI entrypoint. See .github/workflows/main.yml for usage.
]]

# Project
cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
enable_testing()
project("template.cmake")
# Test
add_test(
    NAME "test_txt"
    COMMAND "${CMAKE_COMMAND}" -P "${CMAKE_SOURCE_DIR}/template.cmake"
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/test")
