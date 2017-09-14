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

LOCAL_MODULE := amxx_regex

LOCAL_CFLAGS += -DHAVE_STDINT_H -DPCRE_STATIC

LOCAL_SRC_FILES := \
	../../public/sdk/amxxmodule.cpp \
	module.cpp \
	CRegEx.cpp \
	utils.cpp

LOCAL_SHARED_LIBRARIES := pcre

include $(BUILD_SHARED_LIBRARY)
