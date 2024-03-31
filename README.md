# template.cmake

Template for a [CMake script](https://cmake.org/cmake/help/latest/manual/cmake.1.html#run-a-script) that accepts environment variables but not arguments (i.e., [convention over configuration](https://en.wikipedia.org/wiki/Convention_over_configuration))

## Features

- `template.cmake` - entrypoint
- `CMakeLists.txt` - test driver

## Usage

`cmake -P template.cmake`
