# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_engine)
include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod )

add_definitions(-DHAVE_STDINT_H -DNO_DETOURS)
add_library(amxx_engine SHARED 
	../../public/sdk/amxxmodule.cpp 
	amxxapi.cpp 
	engine.cpp 
	entity.cpp 
	globals.cpp 
	forwards.cpp )

set_default_target_properties(engine)
implement_install(amxx_engine)
