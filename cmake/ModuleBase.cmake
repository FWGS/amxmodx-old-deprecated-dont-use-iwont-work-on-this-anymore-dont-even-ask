include_directories(
	    .
        ${SRCPATH}/public/
        ${SRCPATH}/public/amtl/
        ${SRCPATH}/public/amtl/amtl/
        ${SRCPATH}/public/sdk/
        ${SRCPATH}/public/memtools/
        ${SRCPATH}/third_party/
        ${SRCPATH}/third_party/hashing
        ${SRCPATH}/third_party/utf8rewind
)
add_definitions(-Dstricmp=strcasecmp -D_snprintf=snprintf)

if( CMAKE_SYSTEM_NAME STREQUAL "Linux" )
	add_definitions(-DLINUX)
endif()
