# mulle-dlfcn

♿️ Shared library helper


This is an empty project that provides link instructions for consumers
of the "dlfcn" on various platforms.

It also provides a mulle-dlfcn header. It will also produce an empty library,
which you need not link against.


## Add 

Use [mulle-sde](//github.com/mulle-sde) to add mulle-dlfcn to your project:

```
mulle-sde dependency add --c \
                         --github mulle-core \
                         --marks no-link,no-singlephase \
                         mulle-dlfcn
```


## Install

### mulle-sde

Use [mulle-sde](//github.com/mulle-sde) to build and install mulle-dlfcn and all dependencies:

```
mulle-sde install --prefix /usr/local \
   https://github.com/mulle-core/mulle-dlfcn/archive/latest.tar.gz
```

### Manual Installation

Install into `/usr/local`:

```
mkdir build 2> /dev/null
(
   cd build ;
   cmake -DCMAKE_INSTALL_PREFIX=/usr/local \
         -DCMAKE_PREFIX_PATH=/usr/local \
         -DCMAKE_BUILD_TYPE=Release .. ;
   make install
)
```



