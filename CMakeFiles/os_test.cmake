if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    set(OS_LINUX 1)
elseif(${CMAKE_SYSTEM_NAME} MATCHES "FreeBSD")
    set(OS_BSD 1)
    set(OS_BSD_FREE 1)
elseif(${CMAKE_SYSTEM_NAME} MATCHES "NetBSD")
    set(OS_BSD 1)
    set(OS_BSD_NET 1)
elseif(${CMAKE_SYSTEM_NAME} MATCHES "OpenBSD")
    set(OS_BSD 1)
    set(OS_BSD_OPEN 1)
elseif(${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    set(OS_DARWIN 1)
elseif(${CMAKE_SYSTEM_NAME} MATCHES "SunOS")
    set(OS_SOLARIS 1)
elseif(${MINGW})
    set(OS_MINGW 1)
endif()

include(TestBigEndian)

TEST_BIG_ENDIAN(WORDS_BIGENDIAN)

set(CC_VERSION ${CMAKE_C_COMPILER})