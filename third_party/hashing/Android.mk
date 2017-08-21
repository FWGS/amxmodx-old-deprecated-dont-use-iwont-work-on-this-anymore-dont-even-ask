# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := hashinglib

LOCAL_C_INCLUDES += hashers/

LOCAL_CFLAGS += -DUTF8REWINDS_EXPORTS

LOCAL_SRC_FILES := \
	hashing.cpp \
	hashers/crc32.cpp \
	hashers/keccak.cpp \
	hashers/md5.cpp \
	hashers/sha1.cpp \
	hashers/sha3.cpp \
	hashers/sha256.cpp \

include $(BUILD_STATIC_LIBRARY)
