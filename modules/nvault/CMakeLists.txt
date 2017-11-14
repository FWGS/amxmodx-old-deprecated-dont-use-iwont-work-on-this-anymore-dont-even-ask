# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_nvault)
 include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod )

add_definitions(-DHAVE_STDINT_H)
add_library(amxx_nvault SHARED 
	../../public/sdk/amxxmodule.cpp 
	amxxapi.cpp 
	Binary.cpp 
	Journal.cpp 
	NVault.cpp )
