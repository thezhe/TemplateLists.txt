#[[
A self-contained CMake script. Reads ./test.txt.

    cmake -P <path-to-template.cmake>

Fatal if: reading fails
]]

# See `COMMAND_ERROR_IS_FATAL` in `execute_process`
cmake_minimum_required(VERSION 3.19 FATAL_ERROR)
# Read
file(READ "text.txt" text_txt)
message(STATUS "${text_txt}")
