# This file will be regenerated by `mulle-sourcetree-to-cmake` via
# `mulle-sde reflect` and any edits will be lost.
#
# This file will be included by cmake/share/Files.cmake
#
# Disable generation of this file with:
#
# mulle-sde environment set MULLE_SOURCETREE_TO_CMAKE_DEPENDENCIES_FILE DISABLE
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: A3ED849C-ECFE-4FB8-8E50-D5245D67E30B;mulle-c11;no-all-load,no-cmake-inherit,no-import,no-link,no-recurse,no-singlephase;
# Disable with : `mulle-sourcetree mark mulle-c11 no-header`
# Disable for this platform: `mulle-sourcetree mark mulle-c11 no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark mulle-c11 no-cmake-sdk-<name>`
#
if( NOT MULLE__C11_HEADER)
   find_file( MULLE__C11_HEADER NAMES mulle-c11.h mulle-c11/mulle-c11.h)
   message( STATUS "MULLE__C11_HEADER is ${MULLE__C11_HEADER}")

   #
   # Add MULLE__C11_HEADER to HEADER_ONLY_LIBRARIES list.
   # Disable with: `mulle-sourcetree mark mulle-c11 no-cmake-add`
   #
   set( HEADER_ONLY_LIBRARIES
      ${MULLE__C11_HEADER}
      ${HEADER_ONLY_LIBRARIES}
   )
   if( MULLE__C11_HEADER)
      # intentionally left blank
   else()
      # Disable with: `mulle-sourcetree mark mulle-c11 no-require`
      message( SEND_ERROR "MULLE__C11_HEADER was not found")
   endif()
endif()



#
# Generated from sourcetree: 8D2BE61C-D741-4FCC-8A99-5EB39BBE7A3E;dlfcn-win32;no-all-load,no-cmake-loader,no-cmake-searchpath,no-dynamic-link,no-import,no-intermediate-link,only-platform-mingw,only-platform-windows;dl
# Disable with : `mulle-sourcetree mark dlfcn-win32 no-link`
# Disable for this platform: `mulle-sourcetree mark dlfcn-win32 no-cmake-platform-${MULLE_UNAME}`
# Disable for a sdk: `mulle-sourcetree mark dlfcn-win32 no-cmake-sdk-<name>`
#
if( ${CMAKE_SYSTEM_NAME} MATCHES "Windows")
   if( COLLECT_STARTUP_DEPENDENCY_LIBRARIES_AS_NAMES)
      list( APPEND STARTUP_DEPENDENCY_LIBRARIES "dl")
   else()
      if( NOT DLFCN__WIN32_LIBRARY)
         find_library( DLFCN__WIN32_LIBRARY NAMES
            ${CMAKE_STATIC_LIBRARY_PREFIX}dl${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
            ${CMAKE_STATIC_LIBRARY_PREFIX}dl${CMAKE_STATIC_LIBRARY_SUFFIX}
            NO_CMAKE_SYSTEM_PATH NO_SYSTEM_ENVIRONMENT_PATH
         )
         if( NOT DLFCN__WIN32_LIBRARY AND NOT DEPENDENCY_IGNORE_SYSTEM_LIBARIES)
            find_library( DLFCN__WIN32_LIBRARY NAMES
               ${CMAKE_STATIC_LIBRARY_PREFIX}dl${CMAKE_DEBUG_POSTFIX}${CMAKE_STATIC_LIBRARY_SUFFIX}
               ${CMAKE_STATIC_LIBRARY_PREFIX}dl${CMAKE_STATIC_LIBRARY_SUFFIX}
            )
         endif()
         message( STATUS "DLFCN__WIN32_LIBRARY is ${DLFCN__WIN32_LIBRARY}")
         #
         # The order looks ascending, but due to the way this file is read
         # it ends up being descending, which is what we need.
         #
         if( DLFCN__WIN32_LIBRARY)
            #
            # Add DLFCN__WIN32_LIBRARY to STARTUP_DEPENDENCY_LIBRARIES list.
            # Disable with: `mulle-sourcetree mark dlfcn-win32 no-cmake-add`
            #
            list( APPEND STARTUP_DEPENDENCY_LIBRARIES ${DLFCN__WIN32_LIBRARY})
            #
            # Inherit information from dependency.
            # Encompasses: no-cmake-searchpath,no-cmake-dependency,no-cmake-loader
            # Disable with: `mulle-sourcetree mark dlfcn-win32 no-cmake-inherit`
            #
            # temporarily expand CMAKE_MODULE_PATH
            get_filename_component( _TMP_DLFCN__WIN32_ROOT "${DLFCN__WIN32_LIBRARY}" DIRECTORY)
            get_filename_component( _TMP_DLFCN__WIN32_ROOT "${_TMP_DLFCN__WIN32_ROOT}" DIRECTORY)
            #
            #
            # Search for "Definitions.cmake" and "DependenciesAndLibraries.cmake" to include.
            # Disable with: `mulle-sourcetree mark dlfcn-win32 no-cmake-dependency`
            #
            foreach( _TMP_DLFCN__WIN32_NAME "dl")
               set( _TMP_DLFCN__WIN32_DIR "${_TMP_DLFCN__WIN32_ROOT}/include/${_TMP_DLFCN__WIN32_NAME}/cmake")
               # use explicit path to avoid "surprises"
               if( IS_DIRECTORY "${_TMP_DLFCN__WIN32_DIR}")
                  list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_DLFCN__WIN32_DIR}")
                  #
                  include( "${_TMP_DLFCN__WIN32_DIR}/DependenciesAndLibraries.cmake" OPTIONAL)
                  #
                  list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_DLFCN__WIN32_DIR}")
                  #
                  unset( DLFCN__WIN32_DEFINITIONS)
                  include( "${_TMP_DLFCN__WIN32_DIR}/Definitions.cmake" OPTIONAL)
                  list( APPEND INHERITED_DEFINITIONS ${DLFCN__WIN32_DEFINITIONS})
                  break()
               else()
                  message( STATUS "${_TMP_DLFCN__WIN32_DIR} not found")
               endif()
            endforeach()
         else()
            # Disable with: `mulle-sourcetree mark dlfcn-win32 no-require-link`
            message( SEND_ERROR "DLFCN__WIN32_LIBRARY was not found")
         endif()
      endif()
   endif()
endif()
