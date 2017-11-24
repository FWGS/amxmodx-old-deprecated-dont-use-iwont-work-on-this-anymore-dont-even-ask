# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_hamsandwich)

include(ModuleBase)
include_directories(
	${HLSDK}/dlls 
	${HLSDK}/public 
	${HLSDK}/common 
	${HLSDK}/engine 
	${HLSDK}/pm_shared 
	${METAMOD}/metamod 
	${LIBFFCALL}/trampoline
	)

add_definitions(-DHAVE_STDINT_H)

add_library(amxx_hamsandwich SHARED 
	../../public/sdk/amxxmodule.cpp 
	../../public/memtools/MemoryUtils.cpp 
	amxx_api.cpp 
	config_parser.cpp 
	hook_callbacks.cpp 
	hook_native.cpp 
	srvcmd.cpp 
	call_funcs.cpp 
	hook_create.cpp 
	DataHandler.cpp 
	pdata.cpp 
	hook_specialbot.cpp
	)

#if(CMAKE_SYSTEM_PROCESSOR NOT STREQUAL "x86")
	add_definitions(-DUSE_LIBFFCALL)
	target_link_libraries(amxx_hamsandwich trampoline)
#endif()

set_default_target_properties(hamsandwich)
implement_install(amxx_hamsandwich)
