# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_tfcx)
 include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod
        sqlite/
        thread/
        ../../third_party/sqlite/)
add_library(amxx_tfcx SHARED 
	../../public/sdk/amxxmodule.cpp 
	CRank.cpp 
	CMisc.cpp 
	NBase.cpp 
	NRank.cpp 
	usermsg.cpp 
	Utils.cpp 
	moduleconfig.cpp 
)

set_default_target_properties(tfcx)
implement_install(amxx_tfcx)
