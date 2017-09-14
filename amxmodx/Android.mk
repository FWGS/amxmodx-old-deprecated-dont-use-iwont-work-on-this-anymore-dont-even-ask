# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := mm_amxmodx

LOCAL_C_INCLUDES += \
	$(HLSDK)/dlls \
	$(HLSDK)/public \
	$(HLSDK)/common \
	$(HLSDK)/engine \
	$(HLSDK)/pm_shared \
	$(METAMOD)/metamod \
 	$(LIBFFCALL)/trampoline/

LOCAL_CFLAGS += -DHAVE_STDINT_H

LOCAL_SRC_FILES := \
	meta_api.cpp \
	CVault.cpp \
	vault.cpp \
	float.cpp \
	file.cpp \
	modules.cpp \
	CMisc.cpp \
	CTask.cpp \
	string.cpp \
	amxmodx.cpp \
	CEvent.cpp \
	CCmd.cpp \
	CLogEvent.cpp \
	srvcmd.cpp \
	strptime.cpp \
	amxcore.cpp \
	amxtime.cpp \
	power.cpp \
	amxxlog.cpp \
	fakemeta.cpp \
	amxxfile.cpp \
	CLang.cpp \
	emsg.cpp \
	CForward.cpp \
	CPlugin.cpp \
	CModule.cpp \
	CMenu.cpp \
	util.cpp \
	amx.cpp \
	amxdbg.cpp \
	natives.cpp \
	newmenus.cpp \
	debugger.cpp \
	optimizer.cpp \
	format.cpp \
	messages.cpp \
	libraries.cpp \
	vector.cpp \
	sorting.cpp \
	nongpl_matches.cpp \
	CFlagManager.cpp \
	datastructs.cpp \
	trie_natives.cpp \
	CDataPack.cpp \
	datapacks.cpp \
	stackstructs.cpp \
	CTextParsers.cpp \
	textparse.cpp \
	CvarManager.cpp \
	cvars.cpp \
	../public/memtools/MemoryUtils.cpp \
	../public/memtools/CDetour/detours.cpp \
	../public/memtools/CDetour/asm/asm.c \
	../public/resdk/mod_rehlds_api.cpp \
	CLibrarySys.cpp \
	CGameConfigs.cpp \
	gameconfigs.cpp \
	CoreConfig.cpp \

# TODO
ifeq ($(TARGET_ARCH_ABI),x86)
	LOCAL_LDFLAGS += $(LOCAL_PATH)/JIT/amxexecn.o \
		$(LOCAL_PATH)/JIT/amxjitsn.o \
		$(LOCAL_PATH)/JIT/natives-x86.o \
		$(LOCAL_PATH)/JIT/helpers-x86.o
	LOCAL_CFLAGS += -DJIT -DASM32
endif
#ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
#	LOCAL_SRC_FILES += amxexec_arm7_gas.s
#	LOCAL_CFLAGS += -DASM32 -DUSE_LIBFFCALL
#	LOCAL_STATIC_LIBRARIES += trampoline
#endif
#ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
#	$(error armeabi-v7a is not supported. There is even no mods for it!)
#endif
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
	LOCAL_CFLAGS += -DUSE_LIBFFCALL
	LOCAL_STATIC_LIBRARIES += trampoline
endif


LOCAL_LDLIBS := -lz -llog
LOCAL_STATIC_LIBRARIES += android_support hashinglib utf8rewind

include $(BUILD_SHARED_LIBRARY)
