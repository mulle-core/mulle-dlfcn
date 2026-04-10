## 0.1.0









feature: add executable-namespace symbol lookup and Windows support

* add `mulle_dlsym_exe` inline helper to reliably lookup symbols in the executable namespace (portable dlsym usage)
* add Windows support and fallbacks: include Windows headers, provide a `MULLE_RTLD_DEFAULT` fallback for Windows, and use platform dlfcn integration
* simplify public header includes and export `MULLE__DLFCN_GLOBAL` for proper linkage
