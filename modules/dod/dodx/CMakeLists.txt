# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_dodx)
 include(ModuleBase)
include_directories(
	${HLSDK}/dlls 
	${HLSDK}/public 
	${HLSDK}/common 
	${HLSDK}/engine 
	${HLSDK}/pm_shared 
	${METAMOD}/metamod )

add_library(amxx_dodx SHARED 
	../../../public/sdk/amxxmodule.cpp 
	CRank.cpp
	CMisc.cpp 
	NBase.cpp 
	NRank.cpp 
	usermsg.cpp 
	Utils.cpp 
	moduleconfig.cpp )
