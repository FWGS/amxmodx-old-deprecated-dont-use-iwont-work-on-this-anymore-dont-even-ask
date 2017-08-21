# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := trampoline

LOCAL_C_INCLUDES += $(LIBFFCALL) $(LIBFFCALL)/trampoline/ $(LIBFFCALL)/gnulib-lib/

LOCAL_SRC_FILES := libffcall-1.13/trampoline/trampoline.c

include $(BUILD_STATIC_LIBRARY)
