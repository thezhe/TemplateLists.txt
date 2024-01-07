#!/usr/bin/env -S cmake -P
# This is the entrypoint.

file(READ "file.txt" FILE_TXT)
message(STATUS "${FILE_TXT}")
