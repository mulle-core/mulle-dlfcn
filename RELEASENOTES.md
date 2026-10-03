### 0.1.3




* `add_subdirectory` consumers now inherit this library's include directories and link libraries, so a plain `target_link_libraries(` app PRIVATE mulle-dlfcn) suffices
* `find_package` consumers resolve dependencies by name and re-export them, fixing undefined symbols when only the library target was linked
* whole-archive/force-link semantics are propagated to static-library consumers through an INTERFACE wrapper
* fix header reflection filtering to match reflect directories on full path-segment boundaries, so e.g. src/reflect.glfw-metal is no longer wrongly kept

### 0.1.2



* `add_subdirectory` consumers now keep all-load (whole-archive) dependency behavior instead of losing it via target-name reduction
* avoid leaking phantom source-tree `include/` -I paths when a project ships no include directory
* guard against duplicate dlfcn/dl/dlfc-win32/psapi library entries in generated reflect files





* API summary now linked from README
* BSD-3-Clause license header added to public header mulle-dlfcn.h
* BSD-3-Clause license header added to source mulle-dlfcn.c

### 0.1.1

Various small improvements
