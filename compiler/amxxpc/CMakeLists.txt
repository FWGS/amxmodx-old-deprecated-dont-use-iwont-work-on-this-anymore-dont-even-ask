# AMXXOnAndroid
# Copyright (C) 2017 a1batross


cmake_minimum_required(VERSION 2.6.0)
project(amxxpc)

include_directories( . ../../public/)

add_definitions( -DAMX_ANSIONLY -DHAVE_STDINT_H)

set(AMXMODX_SRC amx.cpp amxxpc.cpp Binary.cpp)

add_executable(amxxpc ${AMXMODX_SRC})

target_link_libraries( amxxpc z ${CMAKE_DL_LIBS})

set_target_properties(amxxpc PROPERTIES
	POSITION_INDEPENDENT_CODE 1
	OUTPUT_NAME "amxxpc" PREFIX "")

install(TARGETS amxxpc
	DESTINATION /addons/amxmodx/scripting/
	PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE
	    GROUP_READ GROUP_EXECUTE
		WORLD_READ WORLD_EXECUTE)
