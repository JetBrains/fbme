# Packages
 - `cmake` - is used to automatically build 4diac FORTE executable.
 - `deploy` - is used for device configuration through TCP.
 - `parser` - parses 4diac FORTE responses.
 - `translator` - translates function blocks to C++ and Lua.
 - `validators` - validates function blocks before translation.

# Test packages
 - `integration-test` - designed for integration testing, 
such as running 4diac FORTE in Docker and parsing real function blocks from resource files.
 - `test` - contains unit tests, which are written using mocks.

## Requirements for `integration-tests`:
- `deploy` and `cmake` test packages require Docker daemon running.
