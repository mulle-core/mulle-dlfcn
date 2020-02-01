#ifndef mulle_dlfcn_windows_h__
#define mulle_dlfcn_windows_h__

#ifdef _WIN32

#define RTLD_NOW        0
#define RTLD_LAZY       0x1
#define RTLD_GLOBAL     0x2
#define RTLD_LOCAL      0x4

#define RTLD_DEFAULT    ((void *) 0)
//#define RTLD_NEXT       ((void *) -1L)

//
// currently we only do RTLD_DEFAULT or filename with RTLD_NOW
//
void   *dlopen( const char *filename, int mode);
int    dlclose( void *handle);
void   *dlsym( void *handle, const char *symbol);  // const this for API compatibility

// nothing yet
char   *dlerror( void);

#endif

#endif
