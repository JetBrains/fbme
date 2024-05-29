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

## package `cmake`
 - `builders` - 4diac FORTE executable builders. There are local and docker builders.
 - `shell` - contains classes to run system commands locally or in docker environment.

## package `deploy`
- `communication` - contains TCP handler to transfer data between 4diac FORTE and FBME.
- `controllers` - classes in this package use `communication`, `parser`, `translator` packages to 
handle user commands during configuration of 4diac FORTE. This package provides a high-level abstraction.


## package `parser`
- No subpackages.

## package `translator`
- `cpp` - translators for C++. These translators translate function blocks into C++ code representation 
compatible with 4diac FORTE.
- `lua` - translators for Lua. These translators translate function blocks into Lua code representation 
compatible with 4diac FORTE.

## package `validators`
- No subpackages.
