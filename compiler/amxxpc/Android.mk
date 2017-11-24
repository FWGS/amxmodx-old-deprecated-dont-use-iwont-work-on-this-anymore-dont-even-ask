# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := amxxpc

LOCAL_C_INCLUDES += . $(SRCPATH)/public/
LOCAL_CXXFLAGS += -fexceptions

LOCAL_CFLAGS += -DAMX_ANSIONLY -DHAVE_STDINT_H

LOCAL_SRC_FILES := amx.cpp amxxpc.cpp Binary.cpp

LOCAL_LDLIBS := -lz -ldl -lm
LOCAL_STATIC_LIBRARIES := amxxpc32

include $(BUILD_SHARED_LIBRARY)
