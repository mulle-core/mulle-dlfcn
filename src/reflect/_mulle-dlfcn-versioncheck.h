/*
 *   This file will be regenerated by `mulle-project-versioncheck`.
 *   Any edits will be lost.
 */
#if defined( MULLE_C11_VERSION)
# if MULLE_C11_VERSION < ((4 << 20) | (1 << 8) | 2)
#  error "mulle-c11 is too old"
# endif
# if MULLE_C11_VERSION >= ((5 << 20) | (0 << 8) | 0)
#  error "mulle-c11 is too new"
# endif
#endif
