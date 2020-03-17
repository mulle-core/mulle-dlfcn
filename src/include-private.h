#ifndef mulle_dlfcn_include_private_h__
#define mulle_dlfcn_include_private_h__


/* DO:    #include this files in sources

   DONT:  #include this files in headers
          #import this file anywhere (except in import-private.h)
 */


/* This is a central include file to not expose includes to consumers of
   this library. It must not be imported by .h files, but by .c files
   only.
 */

#include "include.h"

/* Include the header file automatically generated by mulle-sourcetree-to-c.
   Here the prefix is harmless and serves disambiguation. If you have no
   sourcetree, then you don't need it.
 */
#ifdef _WIN32
# define WIN32_LEAN_AND_MEAN
# include <windows.h>  // need this for PSAPI
#endif

#include "_mulle-dlfcn-include-private.h"

/* You can add some more include statements here */

#endif
