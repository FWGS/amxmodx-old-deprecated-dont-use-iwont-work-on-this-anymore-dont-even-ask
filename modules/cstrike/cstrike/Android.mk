# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := amxx_cstrike

LOCAL_C_INCLUDES += \
	$(HLSDK)/dlls \
	$(HLSDK)/public \
	$(HLSDK)/common \
	$(HLSDK)/engine \
	$(HLSDK)/pm_shared \
	$(METAMOD)/metamod \
	
LOCAL_CFLAGS += -DHAVE_STDINT_H

LOCAL_SRC_FILES := \
	../../../public/sdk/amxxmodule.cpp \
	CstrikeMain.cpp \
	CstrikePlayer.cpp \
	CstrikeNatives.cpp \
	CstrikeHacks.cpp \
	CstrikeUtils.cpp \
	CstrikeUserMessages.cpp \
	CstrikeItemsInfos.cpp \
	../../../public/memtools/MemoryUtils.cpp \
	../../../public/memtools/CDetour/detours.cpp \
	../../../public/memtools/CDetour/asm/asm.c \
	../../../public/resdk/mod_rehlds_api.cpp \
	../../../public/resdk/mod_regamedll_api.cpp \

include $(BUILD_SHARED_LIBRARY)
