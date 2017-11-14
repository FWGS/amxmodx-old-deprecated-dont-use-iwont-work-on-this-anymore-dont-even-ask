# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_geoip)

 include(ModuleBase)
include_directories(
	${HLSDK}/dlls 
	${HLSDK}/public 
	${HLSDK}/common 
	${HLSDK}/engine 
	${HLSDK}/pm_shared 
	${METAMOD}/metamod 
	../../third_party/libmaxminddb
	)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=c99")
add_definitions(-DHAVE_STDINT_H)

add_library(amxx_geoip SHARED ../../public/sdk/amxxmodule.cpp 
	../../third_party/libmaxminddb/maxminddb.c 
	geoip_main.cpp 
	geoip_natives.cpp 
	geoip_util.cpp)
