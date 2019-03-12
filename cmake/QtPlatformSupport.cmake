function(set01 result)
    if (${ARGN})
        set("${result}" 1 PARENT_SCOPE)
    else()
        set("${result}" 0 PARENT_SCOPE)
    endif()
endfunction()

set01(LINUX CMAKE_SYSTEM_NAME STREQUAL "Linux")
set01(HPUX CMAKE_SYSTEM_NAME STREQUAL "HPUX")
set01(ANDROID CMAKE_SYSTEM_NAME STREQUAL "Android")  # FIXME: How to identify this?
set01(NACL CMAKE_SYSTEM_NAME STREQUAL "NaCl") # FIXME: How to identify this?
set01(INTEGRITY CMAKE_SYSTEM_NAME STREQUAL "Integrity") # FIXME: How to identify this?
set01(VXWORKS CMAKE_SYSTEM_NAME STREQUAL "VxWorks") # FIXME: How to identify this?
set01(QNX CMAKE_SYSTEM_NAME STREQUAL "QNX") # FIXME: How to identify this?
set01(OPENBSD CMAKE_SYSTEM_NAME STREQUAL "OpenBSD") # FIXME: How to identify this?
set01(FREEBSD CMAKE_SYSTEM_NAME STREQUAL "FreeBSD") # FIXME: How to identify this?
set01(NETBSD CMAKE_SYSTEM_NAME STREQUAL "NetBSD") # FIXME: How to identify this?
set01(WASM CMAKE_SYSTEM_NAME STREQUAL "Webassembly") # FIXME: How to identify this?

set01(BSD APPLE OR OPENBSD OR FREEBSD OR NETBSD)

set01(WINRT WIN32 AND CMAKE_VS_PLATFORM_TOOSLET STREQUAL "winrt") # FIXME: How to identify this?

set01(APPLE_OSX APPLE) # FIXME: How to identify this? For now assume that always building for macOS.
set01(APPLE_UIKIT APPLE AND CMAKE_XCODE_PLATFORM_TOOLSET STREQUAL "uikit") # FIXME: How to identify this?
set01(APPLE_IOS APPLE AND CMAKE_XCODE_PLATFORM_TOOLSET STREQUAL "ios") # FIXME: How to identify this?
set01(APPLE_TVOS APPLE AND CMAKE_XCODE_PLATFORM_TOOLSET STREQUAL "tvos") # FIXME: How to identify this?
set01(APPLE_WATCHOS APPLE AND CMAKE_XCODE_PLATFORM_TOOLSET STREQUAL "watchos") # FIXME: How to identify this?

set01(ANDROID_EMBEDDED ANDROID) # FIXME: How to identify this?

set01(GCC CMAKE_CXX_COMPILER_ID STREQUAL "GNU")
set01(CLANG CMAKE_CXX_COMPILER_ID MATCHES "Clang")
set01(ICC CMAKE_C_COMPILER MATCHES "icc|icl")
set01(QCC CMAKE_C_COMPILER MATCHES "qcc") # FIXME: How to identify this?

if(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(QT_64BIT TRUE)
elseif(CMAKE_SIZEOF_VOID_P EQUAL 4)
    set(QT_32BIT TRUE)
endif()
