# AMXXOnAndroid
# Copyright (C) 2017 a1batross


cmake_minimum_required(VERSION 2.6.0)
project(mm_amxmodx)

 include(ModuleBase)
include_directories( ${HLSDK}/dlls ${HLSDK}/public ${HLSDK}/common ${HLSDK}/engine ${HLSDK}/pm_shared ${METAMOD}/metamod ${LIBFFCALL}/trampoline/ )

add_definitions( -DHAVE_STDINT_H -DNO_ASM )

set(AMXMODX_SRC 
	meta_api.cpp 
	CVault.cpp 
	vault.cpp 
	float.cpp
	file.cpp
	modules.cpp 
	CMisc.cpp 
	CTask.cpp 
	string.cpp
	amxmodx.cpp 
	CEvent.cpp 
	CCmd.cpp 
	CLogEvent.cpp 
	srvcmd.cpp 
	strptime.cpp 
	amxcore.cpp 
	amxtime.cpp 
	power.cpp 
	amxxlog.cpp 
	fakemeta.cpp 
	amxxfile.cpp 
	CLang.cpp 
	emsg.cpp 
	CForward.cpp 
	CPlugin.cpp 
	CModule.cpp
	CMenu.cpp 
	util.cpp 
	amx.cpp 
	amxdbg.cpp 
	natives.cpp 
	newmenus.cpp 
	debugger.cpp 
	optimizer.cpp 
	format.cpp 
	messages.cpp 
	libraries.cpp 
	vector.cpp 
	sorting.cpp 
	nongpl_matches.cpp 
	CFlagManager.cpp 
	datastructs.cpp 
	trie_natives.cpp 
	CDataPack.cpp 
	datapacks.cpp 
	stackstructs.cpp 
	CTextParsers.cpp 
	textparse.cpp 
	CvarManager.cpp 
	cvars.cpp 
	../public/memtools/MemoryUtils.cpp 
	../public/memtools/CDetour/detours.cpp 
	../public/memtools/CDetour/asm/asm.c 
	../public/resdk/mod_rehlds_api.cpp 
	CLibrarySys.cpp 
	CGameConfigs.cpp 
	gameconfigs.cpp 
	CoreConfig.cpp 
)

#if( ${TARGET_ARCHITECTURE} STREQUAL "i386" )
#   enable_language(ASM-ATT)
#   list(APPEND AMXMODX_SRC helpers-x86.asm)
#endif()

#if( ${CMAKE_SYSTEM_PROCESSOR} STREQUAL "x86" )
#	list(APPEND AMXMODX_SRC 
#		JIT/amxexecn.o 
#		JIT/amxjitsn.o 
#		JIT/natives-x86.o 
#		JIT/helpers-x86.o)
#	add_definitions( -DJIT -DASM32 )
#else()
	add_definitions( -DUSE_LIBFFCALL )
#endif()

add_library(mm_amxmodx SHARED ${AMXMODX_SRC})

#if( ${CMAKE_SYSTEM_PROCESSOR} NOT STREQUAL "x86" )
	target_link_libraries(mm_amxmodx trampoline)
#endif()

target_link_libraries(mm_amxmodx z hashinglib utf8rewind ${CMAKE_DL_LIBS})

set_target_properties(mm_amxmodx PROPERTIES
	POSITION_INDEPENDENT_CODE 1
	OUTPUT_NAME "amxmodx_mm_${TARGET_ARCHITECTURE}" PREFIX "")

install(TARGETS mm_amxmodx
	DESTINATION /addons/amxmodx/dlls/
	PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE
	    GROUP_READ GROUP_EXECUTE
		WORLD_READ WORLD_EXECUTE)
