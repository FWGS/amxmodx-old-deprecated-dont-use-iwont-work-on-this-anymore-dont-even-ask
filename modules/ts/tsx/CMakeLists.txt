# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_tsx)
 include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod )

add_library(amxx_tsx SHARED 
	../../../public/sdk/amxxmodule.cpp 
	CMisc.cpp 
	CRank.cpp 
	NBase.cpp 
	NRank.cpp 
	Utils.cpp 
	moduleconfig.cpp 
	usermsg.cpp

)
