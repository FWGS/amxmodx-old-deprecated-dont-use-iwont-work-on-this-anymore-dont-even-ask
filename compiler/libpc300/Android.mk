# AMXXOnAndroid
# Copyright (C) 2017 a1batross

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include $(XASH3D_CONFIG)

LOCAL_MODULE := amxxpc32

LOCAL_C_INCLUDES += .

LOCAL_CFLAGS +=  -DLINUX -DENABLE_BINRELOC -DNO_MAIN -DPAWNC_DLL -DHAVE_STDINT_H -D_GNU_SOURCE

LOCAL_SRC_FILES := sc1.c sc2.c sc3.c sc4.c sc5.c sc6.c sc7.c \
	scvars.c scmemfil.c scstate.c sclist.c sci18n.c \
	pawncc.c libpawnc.c prefix.c memfile.c sp_symhash.c

LOCAL_LDLIBS := -lm -lpthread

include $(BUILD_STATIC_LIBRARY)
