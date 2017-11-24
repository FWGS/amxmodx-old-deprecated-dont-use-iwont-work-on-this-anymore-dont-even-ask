# AMXXOnAndroid
# Copyright (C) 2017 a1batross
cmake_minimum_required(VERSION 2.6.0)
project(amxx_dodfun)
 include(ModuleBase)
include_directories(
	${HLSDK}/dlls 
	${HLSDK}/public 
	${HLSDK}/common 
	${HLSDK}/engine 
	${HLSDK}/pm_shared 
	${METAMOD}/metamod )

add_library(amxx_dodfun SHARED 
	../../../public/sdk/amxxmodule.cpp 
	NBase.cpp 
	CMisc.cpp 
	NPD.cpp 
	Utils.cpp 
	usermsg.cpp 
	moduleconfig.cpp)
set_default_target_properties(dodfun)
implement_install(amxx_dodfun)
