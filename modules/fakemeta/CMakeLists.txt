# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_fakemeta)
 include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod )

add_definitions(-DHAVE_STDINT_H)
add_library(amxx_fakemeta SHARED 
	../../public/sdk/amxxmodule.cpp 
	../../public/memtools/MemoryUtils.cpp 
	../../public/resdk/mod_regamedll_api.cpp 
	dllfunc.cpp 
	engfunc.cpp 
	fakemeta_amxx.cpp 
	pdata.cpp 
	pdata_entities.cpp 
	pdata_gamerules.cpp 
	forward.cpp 
	fm_tr.cpp 
	pev.cpp 
	glb.cpp 
	fm_tr2.cpp 
	misc.cpp )

set_default_target_properties(fakemeta)
implement_install(amxx_fakemeta)

