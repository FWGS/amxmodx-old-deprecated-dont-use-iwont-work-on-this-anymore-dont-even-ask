# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_ns)
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
add_definitions(-DHAVE_STDINT_H)
add_library(amxx_ns SHARED 
	../../public/sdk/amxxmodule.cpp 
	dllapi.cpp 
	utils.cpp 
	amxxapi.cpp 
	engineapi.cpp 
	TitleManager.cpp 
	ParticleManager.cpp 
	MessageHandler.cpp 
	GameManager.cpp 
	natives/general.cpp 
	natives/player.cpp 
	natives/player_memory.cpp 
	natives/structure.cpp 
	natives/weapons.cpp 
	natives/particles.cpp 
	natives/memberfuncs.cpp 
)
