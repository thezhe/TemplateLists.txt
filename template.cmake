#[[
A self-contained CMake script. Reads ./test.txt.

    cmake -P <path-to-template.cmake>

Fatal if: reading fails.
]]

# See `execute_process` COMMAND_ERROR_IS_FATAL.
cmake_minimum_required(VERSION 3.19 FATAL_ERROR)

# Read
file(READ "test.txt" TEST_TXT)
execute_process(
    COMMAND "${CMAKE_COMMAND}" -E echo "${TEST_TXT}" COMMAND_ERROR_IS_FATAL ANY
)
