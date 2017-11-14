# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(utf8rewind)
include_directories(. internal/)

add_definitions(-DUTF8REWINDS_EXPORTS)
add_library(utf8rewind STATIC 
	utf8rewind.c 
	unicodedatabase.c 
	internal/casemapping.c 
	internal/codepoint.c 
	internal/composition.c 
	internal/database.c 
	internal/decomposition.c 
	internal/seeking.c 
	internal/streaming.c 
)
