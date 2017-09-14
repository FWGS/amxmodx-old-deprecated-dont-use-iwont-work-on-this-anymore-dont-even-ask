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
	$(SRCPATH)/third_party/libmaxminddb

LOCAL_MODULE := amxx_geoip

LOCAL_CFLAGS += -DHAVE_STDINT_H
LOCAL_C_ONLY_FLAGS := -std=c99

LOCAL_SRC_FILES := \
	../../public/sdk/amxxmodule.cpp \
	../../third_party/libmaxminddb/maxminddb.c \
	geoip_main.cpp \
	geoip_natives.cpp \
	geoip_util.cpp \

include $(BUILD_SHARED_LIBRARY)
