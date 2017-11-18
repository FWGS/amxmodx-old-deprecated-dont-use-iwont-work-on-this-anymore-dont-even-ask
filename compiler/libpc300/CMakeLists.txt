#build file for CMake, see http://www.cmake.org/

PROJECT(amxxpc32)

find_library(Threads REQUIRED)

include_directories(.)
add_definitions(-DNO_MAIN -DPAWNC_DLL -DHAVE_STDINT_H -D_GNU_SOURCE)

set(PAWNC_SRCS sc1.c sc2.c sc3.c sc4.c sc5.c sc6.c sc7.c 
	scvars.c scmemfil.c scstate.c sclist.c sci18n.c
	pawncc.c libpawnc.c prefix.c memfile.c sp_symhash.c)

if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
	add_definitions( -DLINUX -DENABLE_BINRELOC)
endif()

add_library(amxxpc32 SHARED ${PAWNC_SRCS})
set_target_properties (amxxpc32 PROPERTIES
	POSITION_INDEPENDENT_CODE 1
	OUTPUT_NAME "amxxpc32"
	PREFIX "")
if(CMAKE_SYSTEM_NAME STREQUAL "Linux")
	target_link_libraries(amxxpc32 m pthread)
endif()
