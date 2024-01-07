#!/usr/bin/env -S cmake -P
# Run a url as a CMake script.
# Requires `curl`.

# CLI
set(WRUN_URL "${CMAKE_ARGV3}")
set(WRUN_ARGC 4)

#[[
Print usage and exit with non-zero exit code.
]]
function(exit_failure)
    message(FATAL_ERROR "Usage: cmake -P wrun.cmake <url>.")
endfunction()

# <url> is the 4th and last argument after `cmake`, `-P`, and `wrun.cmake`.
if(NOT WRUN_URL OR ${CMAKE_ARGC} GREATER ${WRUN_ARGC})
    exit_failure()
endif()

# Store <url> content in `CURL_OUTPUT`.
execute_process(
    COMMAND curl -fsSL "${WRUN_URL}"
    OUTPUT_VARIABLE CURL_OUTPUT
    RESULT_VARIABLE CURL_RESULT
    ERROR_VARIABLE CURL_ERROR
    TIMEOUT 60
)

include(CMakePrintHelpers)
if(CURL_RESULT)
    cmake_print_variables(CURL_RESULT)
    cmake_print_variables(CURL_ERROR)
    exit_failure()
endif()

# Run <url> contents.
cmake_language(EVAL CODE "${CURL_OUTPUT}")
