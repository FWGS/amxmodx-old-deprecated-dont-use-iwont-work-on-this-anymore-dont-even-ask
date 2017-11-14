# AMXXOnAndroid
# Copyright (C) 2017 a1batross

cmake_minimum_required(VERSION 2.6.0)
project(amxx_sqlite)
 include(ModuleBase)
include_directories(
        ${HLSDK}/dlls 
        ${HLSDK}/public 
        ${HLSDK}/common 
        ${HLSDK}/engine 
        ${HLSDK}/pm_shared 
        ${METAMOD}/metamod
		sqlitepp/
        thread/
        ../../third_party/sqlite/)
find_package (Threads)
add_definitions(-DSM_DEFAULT_THREADER -DHAVE_STDINT_H -Dstricmp=strcasecmp)
add_library(amxx_sqlite SHARED 
	basic_sql.cpp 
	handles.cpp 
	module.cpp 
	threading.cpp 
	../../public/sdk/amxxmodule.cpp 
	oldcompat_sql.cpp 
	thread/BaseWorker.cpp 
	thread/ThreadWorker.cpp 
	sqlitepp/SqliteQuery.cpp 
	sqlitepp/SqliteResultSet.cpp 
	sqlitepp/SqliteDatabase.cpp 
	sqlitepp/SqliteDriver.cpp 
	../../third_party/sqlite/sqlite3.c 
	thread/PosixThreads.cpp )
target_link_libraries (amxx_sqlite ${CMAKE_THREAD_LIBS_INIT})
