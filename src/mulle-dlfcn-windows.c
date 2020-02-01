#ifdef _WIN32

#include "mulle-dlfcn-windows.h"

#include "include-private.h"



void   *dlopen( const char *filename, int mode)
{
   HMODULE   hModule;

   if( filename)
      hModule = LoadLibraryExA( filename, NULL, LOAD_WITH_ALTERED_SEARCH_PATH);
   else
      hModule = GetModuleHandle( NULL);
   return( (void *) hModule);
}


int   dlclose( void *handle)
{
   return( (int) FreeLibrary( (HMODULE) handle));
}


void   *dlsym( void *handle, const char *symbol)
{
   FARPROC   address;
   HMODULE   hModule;

   hModule = (HMODULE) handle;
   if( handle == RTLD_DEFAULT)
      hModule = GetModuleHandle( NULL);
   address = GetProcAddress( (HMODULE) hModule, symbol);

   return( *(void **) &address);
}


char   *dlerror( void)
{
   return(  NULL);
}

#endif
