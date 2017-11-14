#
# Copyright (c) 2015 Pavlo Lavrenenko
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

cmake_minimum_required(VERSION 2.6.0)
project (AMXXONANDROID)

include(CMakeDependentOption)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake/")
set(HLSDK "${CMAKE_CURRENT_LIST_DIR}/hlsdk/" CACHE STRING "HLSDK path")
set(METAMOD "${CMAKE_CURRENT_LIST_DIR}/android/jni/metamod" CACHE STRING "Metamod path" )
set(LIBFFCALL "${CMAKE_CURRENT_LIST_DIR}/android/jni/libffcall/libffcall-1.13" CACHE STRING "libffcall src path" )
set(SRCPATH "${CMAKE_CURRENT_LIST_DIR}")

option(XASH_64BIT "Enable experimental 64-bit build. Note that you must recompile game for 64 bit." OFF)

if(NOT XASH_64BIT AND CMAKE_SIZEOF_VOID_P EQUAL 8)
	message(FATAL_ERROR "Xash3D doesn't work with 64 bit systems well and there is almost no games compiled for 64-bit. Please, set CMake to build for 32 system. If you still want 64bit build, pass -DXASH_64BIT=1 to CMake")
endif()


add_subdirectory( amxmodx )
add_subdirectory( modules )
add_subdirectory( third_party )
add_subdirectory( android/jni/libffcall )
add_subdirectory( ${METAMOD}/metamod )
add_subdirectory( android/jni/filesystem_stdio_xash )

