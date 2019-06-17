#
# cmake/_Libraries.cmake is generated by `mulle-sde`. Edits will be lost.
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

# sourcetree: DL;no-all-load,no-cmakeinherit,no-import,no-share,only-os-mingw;dl,dlfcn
if( ${CMAKE_SYSTEM_NAME} MATCHES "Windows")
   if( NOT DL_LIBRARY)
      find_library( DL_LIBRARY NAMES dl dlfcn)
      message( STATUS "DL_LIBRARY is ${DL_LIBRARY}")
      #
      # the order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need
      if( DL_LIBRARY)
         #
         # Add to DL_LIBRARY list.
         # Disable with: `mark no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${DL_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         # intentionally left blank
      else()
         message( FATAL_ERROR "DL_LIBRARY was not found")
      endif()
   endif()
endif()


# sourcetree: DL;no-all-load,no-cmakeinherit,no-import,no-os-mingw,no-share;dl,dlfcn
if( NOT ${CMAKE_SYSTEM_NAME} MATCHES "Windows")
   if( NOT DL_LIBRARY)
      find_library( DL_LIBRARY NAMES dl dlfcn)
      message( STATUS "DL_LIBRARY is ${DL_LIBRARY}")
      #
      # the order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need
      if( DL_LIBRARY)
         #
         # Add to DL_LIBRARY list.
         # Disable with: `mark no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${DL_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         # intentionally left blank
      else()
         message( FATAL_ERROR "DL_LIBRARY was not found")
      endif()
   endif()
endif()
