# templatelists

`CMakeLists.txt`-as-a-module template

## Usage

### CMakeLists.txt

```CMake
include(FetchContent)
FetchContent_Declare(
    templatelists
    GIT_REPOSITORY https://github.com/thezhe/templatelists.git
    GIT_TAG <hash>
    GIT_SHALLOW TRUE)
FetchContent_MakeAvailable(templatelists)
thezhe_templatelists()
```

## Versioning

- Tags - stable SemVer
- `main` branch - unstable
