#
# cmake/_Sources.cmake is generated by `mulle-sde`. Edits will be lost.
#
if( MULLE_TRACE_INCLUDE)
   MESSAGE( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

set( SOURCES
src/mulle-dlfcn.c
src/mulle-dlfcn-standalone.c
src/mulle-dlfcn-windows.c
)