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

	
LOCAL_MODULE := amxx_tsx

LOCAL_SRC_FILES := \
	../../../public/sdk/amxxmodule.cpp \
	CMisc.cpp \
	CRank.cpp \
	NBase.cpp \
	NRank.cpp \
	Utils.cpp \
	moduleconfig.cpp \
	usermsg.cpp

include $(BUILD_SHARED_LIBRARY)
