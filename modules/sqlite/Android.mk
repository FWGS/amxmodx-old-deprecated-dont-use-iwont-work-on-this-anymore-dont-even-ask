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
	$(LOCAL_PATH)/sqlitepp \
	$(LOCAL_PATH)/thread \
	$(SRCPATH)/third_party/sqlite

LOCAL_MODULE := amxx_sqlite

LOCAL_CFLAGS += -pthread -DSM_DEFAULT_THREADER -DHAVE_STDINT_H -Dstricmp=strcasecmp

# LOCAL_LDFLAGS += -lpthread

LOCAL_SRC_FILES := \
	basic_sql.cpp \
	handles.cpp \
	module.cpp \
	threading.cpp \
	../../public/sdk/amxxmodule.cpp \
	oldcompat_sql.cpp \
	thread/BaseWorker.cpp \
	thread/ThreadWorker.cpp \
	sqlitepp/SqliteQuery.cpp \
	sqlitepp/SqliteResultSet.cpp \
	sqlitepp/SqliteDatabase.cpp \
	sqlitepp/SqliteDriver.cpp \
	../../third_party/sqlite/sqlite3.c \
	thread/PosixThreads.cpp
  
include $(BUILD_SHARED_LIBRARY)
