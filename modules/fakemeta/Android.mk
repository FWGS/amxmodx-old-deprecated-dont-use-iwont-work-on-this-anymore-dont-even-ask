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

LOCAL_MODULE := amxx_fakemeta

LOCAL_SRC_FILES := \
	../../public/sdk/amxxmodule.cpp \
	../../public/memtools/MemoryUtils.cpp \
	../../public/resdk/mod_regamedll_api.cpp \
	dllfunc.cpp \
	engfunc.cpp \
	fakemeta_amxx.cpp \
	pdata.cpp \
	pdata_entities.cpp \
	pdata_gamerules.cpp \
	forward.cpp \
	fm_tr.cpp \
	pev.cpp \
	glb.cpp \
	fm_tr2.cpp \
	misc.cpp \

LOCAL_CFLAGS += -DHAVE_STDINT_H

include $(BUILD_SHARED_LIBRARY)
