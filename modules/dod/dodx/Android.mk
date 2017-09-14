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

LOCAL_MODULE := amxx_dodx

LOCAL_SRC_FILES := \
	../../../public/sdk/amxxmodule.cpp \
	CRank.cpp \
	CMisc.cpp \
	NBase.cpp \
	NRank.cpp \
	usermsg.cpp \
	Utils.cpp \
	moduleconfig.cpp

include $(BUILD_SHARED_LIBRARY)
