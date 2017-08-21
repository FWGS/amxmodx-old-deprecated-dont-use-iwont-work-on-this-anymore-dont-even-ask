# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := utf8rewind

LOCAL_C_INCLUDES += internal/

LOCAL_CFLAGS += -DUTF8REWINDS_EXPORTS

LOCAL_SRC_FILES := \
	utf8rewind.c \
	unicodedatabase.c \
	internal/casemapping.c \
	internal/codepoint.c \
	internal/composition.c \
	internal/database.c \
	internal/decomposition.c \
	internal/seeking.c \
	internal/streaming.c \

include $(BUILD_STATIC_LIBRARY)
