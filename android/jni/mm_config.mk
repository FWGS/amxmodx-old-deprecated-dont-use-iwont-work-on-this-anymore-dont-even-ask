#LOCAL_LDFLAGS += -fopenmp
#LOCAL_CFLAGS += -ftree-parallelize-loops=4 -fopenmp

ifeq ($(_CS16CLIENT_ENABLE_OPENMP), 1)
LOCAL_LDFLAGS += -fopenmp
LOCAL_CFLAGS += -ftree-parallelize-loops=4 -fopenmp
endif

LOCAL_CFLAGS += $(CFLAGS_OPT)
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a-hard)
LOCAL_CFLAGS += $(CFLAGS_OPT_ARM) $(CFLAGS_HARDFP)
endif
ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
LOCAL_CFLAGS += $(CFLAGS_OPT_ARM) -mfloat-abi=softfp
endif
ifeq ($(TARGET_ARCH_ABI),armeabi)
LOCAL_CFLAGS += $(CFLAGS_OPT_ARMv5)
endif
ifeq ($(TARGET_ARCH_ABI),x86)
LOCAL_CFLAGS += $(CFLAGS_OPT_X86)
endif

ifeq ($(NDK_DEBUG),1)
LOCAL_CFLAGS += -ggdb -DDEBUG -D_DEBUG
else
LOCAL_CFLAGS += -DNDEBUG
endif

LOCAL_CPPFLAGS += -std=c++0x

SRCPATH := $(APPLICATIONMK_PATH)/metamod/

LOCAL_C_ONLY_FLAGS += -std=c99
XASH3DSRC := /home/a1ba/projects/xash/xash3d/
