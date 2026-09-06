# mulle-dlfcn

#### ♿️ Shared library helper

This is an empty project that provides link instructions for consumers
of the "dlfcn" on various platforms. It also provides the
`MULLE_RTLD_DEFAULT` define, which is what one generally wants to use when
looking up symbols with `dlysm`.

On Windows this will use [dlfcn-win32]() to supply `dlsym` and relatives.




| Release Version                                       | Release Notes  | AI Documentation
|-------------------------------------------------------|----------------|---------------
| ![Mulle kybernetiK tag](https://img.shields.io/github/tag/mulle-core/mulle-dlfcn.svg) [![Build Status](https://github.com/mulle-core/mulle-dlfcn/workflows/CI/badge.svg)](//github.com/mulle-core/mulle-dlfcn/actions) | [RELEASENOTES](RELEASENOTES.md) | [DeepWiki for mulle-dlfcn](https://deepwiki.com/mulle-core/mulle-dlfcn)




## Documentation & Guides

* [API Summary](asset/dox/api/toc)




### You are here

![Overview](overview.dot.svg)





## Add

mulle-dlfcn is a component of the [mulle-core](//github.com/mulle-core/mulle-core) library. So in your code include the mulle-core umbrella header:

``` c
#include <mulle-core/mulle-core.h>
```

### Add mulle-core to a cmake and git project

``` bash
git submodule add https://github.com/mulle-core/mulle-core.git mulle-core
```

Add this to your `CMakeLists.txt`:

``` cmake
add_subdirectory( mulle-core)
target_link_libraries( ${PROJECT_NAME} PRIVATE mulle-core)
```


### Add mulle-core to a mulle-sde project

``` sh
mulle-sde add github:mulle-core/mulle-core
```

### Embed mulle-dlfcn with clib

``` sh
clib install --out src mulle-core/mulle-dlfcn
```

Append `src` to your include path (e.g. add `-isystem src`  to your `CFLAGS`)
and compile all the sources that were downloaded.

## Install

Use [mulle-sde](//github.com/mulle-sde) to build and install mulle-dlfcn and all dependencies:

``` sh
mulle-sde install --prefix /usr/local \
   https://github.com/mulle-core/mulle-dlfcn/archive/latest.tar.gz
```

### Legacy Installation

Install the requirements:

| Requirements                                 | Description
|----------------------------------------------|-----------------------
| [mulle-c11](https://github.com/mulle-c/mulle-c11)             | 🔀 Cross-platform C compiler glue (and some cpp conveniences)
| [dlfcn-win32](https://github.com/mulle-core/dlfcn-win32)             | dlfcn-win32 [![Build status](https://ci.appveyor.com/api/projects/status/celmbkqj0k41fk04/branch/master?svg=true)](https://ci.appveyor.com/project/dlfcn-win32/dlfcn-win32/branch/master)

Download the latest [tar](https://github.com/mulle-core/mulle-dlfcn/archive/refs/tags/latest.tar.gz) or [zip](https://github.com/mulle-core/mulle-dlfcn/archive/refs/tags/latest.zip) archive and unpack it.

Install **mulle-dlfcn** into `/usr/local` with [cmake](https://cmake.org):

``` sh
PREFIX_DIR="/usr/local"
cmake -B build                               \
      -DMULLE_SDK_PATH="${PREFIX_DIR}"       \
      -DCMAKE_INSTALL_PREFIX="${PREFIX_DIR}" \
      -DCMAKE_PREFIX_PATH="${PREFIX_DIR}"    \
      -DCMAKE_BUILD_TYPE=Release &&
cmake --build build --config Release &&
cmake --install build --config Release
```


## Author

[Nat!](https://mulle-kybernetik.com/weblog) for Mulle kybernetiK  



