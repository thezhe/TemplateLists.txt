# Changelog

## v2.0.0 - 2024/04/19

## Changed

- Move all code to CMakeLists.txt

## v1.1.1 - 2024/03/31

### Changed

- Remove GitHub releases
- Refactor docs and devcontainer

## v1.1.0 - 2024/03/30

### Changed

- Validate environment variable in unit test
- Remove `-j 4` option for Ctest step in `.github/workflows/main.yml`
- Remove `test/text.txt`

## v1.0.0 - 2024/01/27

### Changed

- Move `test.txt` to `test/text.txt`
- Add `-j 4` to CTest step in `.github/workflows/main.yml`
- Name local vars in lower_case

## v0.9.1 - 2024/01/14

### Added

- `CMakeLists.txt`
- CTest step in `.github/workflows/main.yml`

### Changed

- Move test data to `CTest.txt`

## v0.9.0 - 2024/01/07

### Added

- `template.cmake`
- `test/`
- `.github/workflows/main.yml`
