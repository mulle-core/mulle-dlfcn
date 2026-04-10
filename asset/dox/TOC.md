# mulle-dlfcn Library Documentation for AI
<!-- Keywords: dlfcn, sharedlib, dlsym, dlopen, windows, versioning -->
## 1. Introduction & Purpose

- mulle-dlfcn is a thin portability layer that exposes platform-agnostic helpers for dynamic symbol lookup (dlfcn) and provides a stable definition for the "default" runtime namespace (MULLE_RTLD_DEFAULT).
- It solves cross-platform differences when consumers need to lookup symbols at runtime (POSIX dlsym, Windows GetProcAddress via dlfcn-win32).
- Key features: MULLE_RTLD_DEFAULT macro, version helpers, and mulle_dlsym_exe() convenience wrapper.
- Relationship: Component of mulle-core; depends on mulle-c11 and (on Windows) dlfcn-win32.

## 2. Key Concepts & Design Philosophy

- Minimal abstraction: do not wrap or reimplement the platform dynamic loader; provide shims and safe defaults.
- Provide a single canonical default search handle (MULLE_RTLD_DEFAULT) mapped per platform so callers need not special-case OS specifics.
- Provide convenience routine mulle_dlsym_exe() to reliably search the executable's symbol namespace (avoids common "dll"/shared-lib resolution pitfalls).
- Keep the API tiny and header-only where sensible (inline helpers for version and symbol lookup).

## 3. Core API & Data Structures

### 3.1. [mulle-dlfcn.h]

#### Constants & Macros
- MULLE__DLFCN_VERSION
  - Purpose: Encodes library semantic version (major<<20 | minor<<8 | patch).
- MULLE_RTLD_DEFAULT
  - Purpose: Platform-mapped definition for the library/executable default symbol namespace.
  - Behavior: Expands to RTLD_DEFAULT when available; otherwise set to platform-appropriate sentinel (0 on some Linux, (void *)-2 on macOS, (void *)0 on Windows). Use this with dlsym.

#### Version helpers (inline)
- unsigned int mulle_dlfcn_get_version_major( void)
  - Returns major version from MULLE__DLFCN_VERSION.
- unsigned int mulle_dlfcn_get_version_minor( void)
  - Returns minor version.
- unsigned int mulle_dlfcn_get_version_patch( void)
  - Returns patch version.
- uint32_t mulle_dlfcn_get_version( void)
  - Declared global function: returns packed version number.

#### Symbol lookup helpers
- void *mulle_dlsym_exe( const char *name )
  - Purpose: Look up the symbol named `name` in the executable (and at least the executable namespace).
  - Behavior: On Windows uses GetModuleHandle(NULL) + GetProcAddress; on other platforms calls dlsym(MULLE_RTLD_DEFAULT, name).
  - Return: pointer to symbol or NULL if not found.

## 4. Performance Characteristics

- Symbol lookup cost dominated by platform dlsym/GetProcAddress semantics. Typical complexity O(1) per lookup from a call-cost perspective (constant-time API), but actual cost depends on system loader implementation.
- Memory overhead: zero beyond what the platform loader uses; the library is header-thin.
- Thread-safety: No additional synchronization. Underlying dlsym/GetProcAddress are generally thread-safe on modern OSes, but callers should consult platform docs for concurrent module load/unload race conditions.

## 5. AI Usage Recommendations & Patterns

- Best practices:
  - Always include <mulle-dlfcn/mulle-dlfcn.h> rather than platform headers directly.
  - Use MULLE_RTLD_DEFAULT when calling dlsym to get consistent behavior across platforms.
  - Use mulle_dlsym_exe() when the intended symbol lives in the executable namespace (init hooks, exported weak symbols, etc.).
  - Do not assume non-standard behavior of RTLD_DEFAULT on all platforms; rely on the macro provided.
- Common pitfalls:
  - Do not free pointers returned by dlsym or GetProcAddress; they are borrowed pointers to code/data owned by the loader.
  - Beware module unload races: looking up symbols from a module that may be unloaded concurrently can lead to undefined behavior.
- Idiomatic pattern:
  - Prefer the library's small helpers and macros to avoid platform #ifdefs in callers.

## 6. Integration Examples

### Example 1: Using MULLE_RTLD_DEFAULT with dlsym

```c
#include <mulle-dlfcn/mulle-dlfcn.h>
#include <stdio.h>

int
main( void)
{
   void   *sym;

   sym = dlsym( MULLE_RTLD_DEFAULT, "main");
   if( sym)
   {
      printf( "found main at %p\n", sym);
      return( 0);
   }
   return( 1);
}
```

- This example mirrors the repository test (test/00_link). It demonstrates using the provided MULLE_RTLD_DEFAULT macro so the same code works across POSIX and Windows (with dlfcn-win32).

### Example 2: Using mulle_dlsym_exe to lookup executable symbols

```c
#include <mulle-dlfcn/mulle-dlfcn.h>
#include <stdio.h>

int
main( void)
{
   void   *sym;

   /* lookup symbol specifically in the executable namespace */
   sym = mulle_dlsym_exe( "main");
   if( sym)
   {
      printf( "main in exe at %p\n", sym);
      return( 0);
   }
   return( 1);
}
```

- Use this when wanting to find symbols defined in the main executable (init hooks, testing, etc.).

## 7. Dependencies

- mulle-c11 (core compiler/compat helpers)
- dlfcn-win32 (on Windows, provides a Posix-like dlfcn API)


<!-- End of TOC.md for mulle-dlfcn -->
