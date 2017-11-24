# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_fun)
 include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod )

add_library(amxx_fun SHARED 
	../../public/sdk/amxxmodule.cpp 
	../../public/memtools/MemoryUtils.cpp 
	fun.cpp
)

set_default_target_properties(fun)
implement_install(amxx_fun)
