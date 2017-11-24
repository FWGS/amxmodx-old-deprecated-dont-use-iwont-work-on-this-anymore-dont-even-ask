CFLAGS_OPT :=  -O3 -fomit-frame-pointer -funsafe-math-optimizations -ftree-vectorize -fgraphite-identity -floop-interchange -floop-block -funsafe-loop-optimizations -finline-limit=1024 -fno-exceptions -fno-rtti -Dstricmp=strcasecmp -D_snprintf=snprintf -Wno-attributes
CFLAGS_OPT_ARM := -mthumb -mfpu=neon -mcpu=cortex-a9 -pipe -mvectorize-with-neon-quad -DVECTORIZE_SINCOS
CFLAGS_OPT_ARMv5 :=-march=armv6 -mfpu=vfp -marm -pipe
CFLAGS_OPT_X86 := -mtune=atom -march=atom -mssse3 -mfpmath=sse -funroll-loops -pipe -DVECTORIZE_SINCOS
CFLAGS_HARDFP := -D_NDK_MATH_NO_SOFTFP=1 -mhard-float -mfloat-abi=hard -DLOAD_HARDFP -DSOFTFP_LINK
APPLICATIONMK_PATH = $(call my-dir)

XASH3D_CONFIG := $(APPLICATIONMK_PATH)/amxx_config.mk
MM_CONFIG := $(APPLICATIONMK_PATH)/mm_config.mk

HLSDK := $(APPLICATIONMK_PATH)/../../hlsdk
#METAMOD := $(APPLICATIONMK_PATH)/../../metamod-hl1/
METAMOD := $(APPLICATIONMK_PATH)/metamod/
LIBFFCALL := $(APPLICATIONMK_PATH)/libffcall/libffcall-1.13

APP_ABI := armeabi-v7a-hard
APP_MODULES := pcre trampoline hashinglib utf8rewind android_support filesystem_stdio \
	amxxpc32 amxxpc \
	metamod \
	mm_amxmodx \
	amxx_sockets \
	amxx_geoip \
	amxx_hamsandwich \
	amxx_fakemeta \
	amxx_engine \
	amxx_sqlite \
	amxx_fun \
	amxx_csx amxx_cstrike \
	amxx_nvault \
	amxx_regex
#	amxx_tsx amxx_tsfun amx_dodx amx_dodfun amx_tfcx amx_ns

APP_PLATFORM := android-17
# APP_STL := gnustl_static
