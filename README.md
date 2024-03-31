# template.cmake

CMake template script that accepts environment variables but not arguments (i.e., [convention over configuration](https://en.wikipedia.org/wiki/Convention_over_configuration))

## Features

- `template.cmake` - example entrypoint, asserts `$ENV{TEST}` equals `"TEST"`

## Usage

`cmake -P template.cmake`

## Versioning

- Tags - stable SemVer
- `main` branch - unstable
