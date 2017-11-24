if(MSVC)
# TODO
else()
	# GCC and Clang does support -dumpmachine flag
	execute_process(
		COMMAND 
			${CMAKE_C_COMPILER} ${CMAKE_C_FLAGS} -dumpmachine
		OUTPUT_VARIABLE
			ARCH_TEMP
		OUTPUT_STRIP_TRAILING_WHITESPACE)
	
	if(ARCH_TEMP MATCHES "^(i386|x86_64)")
		if(CMAKE_SIZEOF_VOID_P EQUAL 8)
			set(TARGET_ARCHITECTURE "amd64" CACHE STRING "")
		else()
			set(TARGET_ARCHITECTURE "i386" CACHE STRING "")
		endif()
	elseif(ARCH_TEMP MATCHES "^(arm|aarch64)")
		if(CMAKE_SIZEOF_VOID_P EQUAL 8)
			set(TARGET_ARCHITECTURE "aarch64" CACHE STRING "")
		else()
			# TODO: differ hardfp and softfp code
			set(TARGET_ARCHITECTURE "arm" CACHE STRING "")
		endif()
	endif()
endif()
