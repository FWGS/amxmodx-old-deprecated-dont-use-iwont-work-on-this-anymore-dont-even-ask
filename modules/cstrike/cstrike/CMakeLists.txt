# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_cstrike)
 include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod )

add_definitions(-DHAVE_STDINT_H -DNO_HACKS)
add_library(amxx_cstrike SHARED 
	../../../public/sdk/amxxmodule.cpp 
	CstrikeMain.cpp 
	CstrikePlayer.cpp 
	CstrikeNatives.cpp 
	CstrikeHacks.cpp 
	CstrikeUtils.cpp 
	CstrikeUserMessages.cpp 
	CstrikeItemsInfos.cpp 
	../../../public/memtools/MemoryUtils.cpp 
	../../../public/memtools/CDetour/detours.cpp 
	../../../public/memtools/CDetour/asm/asm.c 
	../../../public/resdk/mod_rehlds_api.cpp 
	../../../public/resdk/mod_regamedll_api.cpp )
set_default_target_properties(cstrike)
implement_install(amxx_cstrike)
