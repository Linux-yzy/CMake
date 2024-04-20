find_path(HELLO_INCLUDE_DIR NAMES hello.h PATHS /usr/include/hello /usr/local/include/hello /home/byron/Project/CMake_Study/06_hello_world_SharedLib_Install/build/Install/include/hello)
find_library(HELLO_LIBRARY NAMES hello PATHS /usr/lib /usr/local/lib /home/byron/Project/CMake_Study/06_hello_world_SharedLib_Install/build/Install/lib)

message(STATUS "Variables:HELLO_INCLUDE_DIR:" ${HELLO_INCLUDE_DIR})
message(STATUS "Variables:HELLO_LIBRARY:" ${HELLO_LIBRARY})
if (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
    SET(HELLO_FOUND TRUE)
endif (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
if (HELLO_FOUND)
    if (NOT HELLO_FIND_QUIETLY)
        MESSAGE(STATUS "Found Hello: ${HELLO_LIBRARY}")
    endif(NOT HELLO_FIND_QUIETLY)
else (HELLO_FOUND)
    if (HELLO_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could not find hello library")
    endif (HELLO_FIND_REQUIRED)
endif (HELLO_FOUND)