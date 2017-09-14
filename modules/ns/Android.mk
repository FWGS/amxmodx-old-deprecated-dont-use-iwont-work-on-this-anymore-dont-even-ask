# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_C_INCLUDES += \
	$(HLSDK)/dlls \
	$(HLSDK)/public \
	$(HLSDK)/common \
	$(HLSDK)/engine \
	$(HLSDK)/pm_shared \
	$(METAMOD)/metamod \

LOCAL_MODULE := amxx_ns

LOCAL_CFLAGS += -DHAVE_STDINT_H

LOCAL_SRC_FILES := \
	../../public/sdk/amxxmodule.cpp \
	dllapi.cpp \
	utils.cpp \
	amxxapi.cpp \
	engineapi.cpp \
	TitleManager.cpp \
	ParticleManager.cpp \
	MessageHandler.cpp \
	GameManager.cpp \
	natives/general.cpp \
	natives/player.cpp \
	natives/player_memory.cpp \
	natives/structure.cpp \
	natives/weapons.cpp \
	natives/particles.cpp \
	natives/memberfuncs.cpp \
  
include $(BUILD_SHARED_LIBRARY)
