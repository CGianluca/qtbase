# Generated from concurrent.pro.

#####################################################################
## Concurrent Module:
#####################################################################

qt_add_module(Concurrent
    EXCEPTIONS
    SOURCES
        qtconcurrent_global.h
        qtconcurrentcompilertest.h
        qtconcurrentexception.h
        qtconcurrentfilter.cpp qtconcurrentfilter.h
        qtconcurrentfilterkernel.h
        qtconcurrentfunctionwrappers.h
        qtconcurrentiteratekernel.cpp qtconcurrentiteratekernel.h
        qtconcurrentmap.cpp qtconcurrentmap.h
        qtconcurrentmapkernel.h
        qtconcurrentmedian.h
        qtconcurrentreducekernel.h
        qtconcurrentrun.cpp qtconcurrentrun.h
        qtconcurrentrunbase.h
        qtconcurrentstoredfunctioncall.h
        qtconcurrentthreadengine.cpp qtconcurrentthreadengine.h
    DEFINES
        QT_NO_FOREACH
        QT_NO_USING_NAMESPACE
    LIBRARIES
        Qt::CorePrivate
    PUBLIC_LIBRARIES
        Qt::Core
    PRIVATE_MODULE_INTERFACE
        Qt::CorePrivate
    PRECOMPILED_HEADER
        "../corelib/global/qt_pch.h"
)

## Scopes:
#####################################################################

qt_extend_target(Concurrent CONDITION MSVC AND (TEST_architecture_arch STREQUAL "i386")
    LINK_OPTIONS
        "/BASE:0x66000000"
)
qt_add_docs(Concurrent
    doc/qtconcurrent.qdocconf
)

