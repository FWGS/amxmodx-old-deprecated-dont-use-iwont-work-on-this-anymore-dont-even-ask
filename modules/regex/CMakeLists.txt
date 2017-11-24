# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_regex)
 include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod )

add_definitions(-DHAVE_STDINT_H -DPCRE_STATIC)
add_library(amxx_regex SHARED 
		../../public/sdk/amxxmodule.cpp 
	module.cpp 
	CRegEx.cpp 
	utils.cpp
)
target_link_libraries(amxx_regex pcre)

set_default_target_properties(regex)
implement_install(amxx_regex)
