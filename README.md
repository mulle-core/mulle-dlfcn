# mulle-dlfcn

♿️ Shared library helper


This is an empty project that provides link instructions for consumers
of the "dlfcn" on various platforms.

It also provides a mulle-dlfcn header. It will also produce an empty library,
which you need not link against.


## How to add

```
mulle-sde dependency add --c \
                         --github mulle-core \
                         --marks no-link,no-singlephase \
                         mulle-dlfcn
```

## How to build

This is a [mulle-sde](https://mulle-sde.github.io/) project.

It has it's own virtual environment, that will be automatically setup for you
once you enter it with:

```
mulle-sde mulle-dlfcn
```

Now you can let **mulle-sde** fetch the required dependencies and build the
project for you:

```
mulle-sde craft
```


## Manual Installation

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



