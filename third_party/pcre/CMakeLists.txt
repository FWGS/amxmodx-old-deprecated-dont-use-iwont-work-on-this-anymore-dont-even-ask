#
#  Android makefile for libpcre
#
#  This makefile generates libpcre.so, pcregrep and pcre.h ONLY.
#  It should be amended to build libpcreposix.so, libpcrecpp.so
#  and tests.


# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(pcre)
include_directories(.)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3")
add_definitions(-DHAVE_CONFIG_H)
add_library(pcre STATIC 
	pcre_chartables.c
	pcre_compile.c 
	pcre_config.c 
	pcre_dfa_exec.c 
	pcre_exec.c 
	pcre_fullinfo.c 
	pcre_get.c 
	pcre_globals.c 
	pcre_maketables.c 
	pcre_newline.c 
	pcre_ord2utf8.c 
	pcre_refcount.c 
	pcre_study.c 
	pcre_tables.c 
	pcre_try_flipped.c 
	pcre_ucd.c 
	pcre_valid_utf8.c 
	pcre_version.c 
	pcre_xclass.c 
)
