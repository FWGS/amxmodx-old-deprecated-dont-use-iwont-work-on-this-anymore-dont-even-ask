# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := amxx_hamsandwich

LOCAL_C_INCLUDES += \
	$(HLSDK)/dlls \
	$(HLSDK)/public \
	$(HLSDK)/common \
	$(HLSDK)/engine \
	$(HLSDK)/pm_shared \
	$(METAMOD)/metamod \
	$(LIBFFCALL)/trampoline
	
LOCAL_CFLAGS += -DHAVE_STDINT_H

LOCAL_SRC_FILES := \
	../../public/sdk/amxxmodule.cpp \
	../../public/memtools/MemoryUtils.cpp \
	amxx_api.cpp \
	config_parser.cpp \
	hook_callbacks.cpp \
	hook_native.cpp \
	srvcmd.cpp \
	call_funcs.cpp \
	hook_create.cpp \
	DataHandler.cpp \
	pdata.cpp \
	hook_specialbot.cpp \

ifeq ($(TARGET_ARCH_ABI),x86)
else
LOCAL_CFLAGS += -DUSE_LIBFFCALL
LOCAL_STATIC_LIBRARIES += trampoline
endif
  
include $(BUILD_SHARED_LIBRARY)
