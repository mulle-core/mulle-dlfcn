/*
 *   This file will be regenerated by `mulle-sde reflect` and any edits will be
 *   lost. Suppress generation of this file with:
 *      mulle-sde environment --global \
 *         set MULLE_SOURCETREE_TO_C_INCLUDE_FILE DISABLE
 *
 *   To not generate any header files:
 *      mulle-sde environment --global \
 *         set MULLE_SOURCETREE_TO_C_RUN DISABLE
 */

#ifndef _mulle_dlfcn_include_h__
#define _mulle_dlfcn_include_h__

// How to tweak the following dl #include
//    remove:             `mulle-sourcetree mark dl no-header`
//    rename:             `mulle-sde dependency|library set dl include whatever.h`
//    toggle #import:     `mulle-sourcetree mark dl [no-]import`
//    toggle public:      `mulle-sourcetree mark dl [no-]public`
//    toggle optional:    `mulle-sourcetree mark dl [no-]require`
//    remove for os:      `mulle-sourcetree mark dl no-os-<osname>`
# if ! defined( _WIN32) && ! defined( __windows__)
#  include <dlfcn.h>   // dl
# endif

#endif
