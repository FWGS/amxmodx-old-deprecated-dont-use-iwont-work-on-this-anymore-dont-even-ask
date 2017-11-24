# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(trampoline)
include_directories(${LIBFFCALL} ${LIBFFCALL}/trampoline/ ${LIBFFCALL}/gnulib-lib/)

add_library(trampoline STATIC 
	libffcall-1.13/trampoline/trampoline.c
)
