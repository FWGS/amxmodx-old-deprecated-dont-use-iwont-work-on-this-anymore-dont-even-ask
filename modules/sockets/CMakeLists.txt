# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_sockets)

 include(ModuleBase)
include_directories( 
	${HLSDK}/dlls 
	${HLSDK}/public 
	${HLSDK}/common 
	${HLSDK}/engine 
	${HLSDK}/pm_shared 
	${METAMOD}/metamod )

add_definitions( -DHAVE_STDINT_H )

set(SRC	../../public/sdk/amxxmodule.cpp 
	sockets.cpp
)

add_library(amxx_sockets SHARED ${SRC})
set_default_target_properties(sockets)
implement_install(amxx_sockets)
