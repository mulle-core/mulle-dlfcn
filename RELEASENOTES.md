### 0.1.2



* `add_subdirectory` consumers now keep all-load (whole-archive) dependency behavior instead of losing it via target-name reduction
* avoid leaking phantom source-tree `include/` -I paths when a project ships no include directory
* guard against duplicate dlfcn/dl/dlfc-win32/psapi library entries in generated reflect files





* API summary now linked from README
* BSD-3-Clause license header added to public header mulle-dlfcn.h
* BSD-3-Clause license header added to source mulle-dlfcn.c

### 0.1.1

Various small improvements
