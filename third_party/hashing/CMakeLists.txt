# AMXXOnAndroid
# Copyright (C) 2017 a1batross

# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(hashinglib)
include_directories(hashers/)

add_definitions(-DUTF8REWINDS_EXPORTS)
add_library(hashinglib STATIC 
	hashing.cpp 
	hashers/crc32.cpp 
	hashers/keccak.cpp 
	hashers/md5.cpp 
	hashers/sha1.cpp 
	hashers/sha3.cpp 
	hashers/sha256.cpp 
)
