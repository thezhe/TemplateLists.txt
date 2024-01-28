#[[
CI entrypoint. See .github/workflows/main.yml for usage.
]]

# Settings
cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
enable_testing()
# Project
project("template.cmake")
# Test
add_test(
    NAME "text-test"
    COMMAND "${CMAKE_COMMAND}" -P "${CMAKE_SOURCE_DIR}/template.cmake"
    WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}/test")
