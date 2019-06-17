#include "include.h"

#include <stdint.h>

/*
 *  (c) 2019 nat ORGANIZATION
 *
 *  version:  major, minor, patch
 */
#define MULLE_DLFCN_VERSION  ((0 << 20) | (0 << 8) | 1)


static inline unsigned int   mulle_dlfcn_get_version_major( void)
{
   return( MULLE_DLFCN_VERSION >> 20);
}


static inline unsigned int   mulle_dlfcn_get_version_minor( void)
{
   return( (MULLE_DLFCN_VERSION >> 8) & 0xFFF);
}


static inline unsigned int   mulle_dlfcn_get_version_patch( void)
{
   return( MULLE_DLFCN_VERSION & 0xFF);
}


extern uint32_t   mulle_dlfcn_get_version( void);

/*
   Add other library headers here like so, for exposure to library
   consumers.

   # include "foo.h"
*/
