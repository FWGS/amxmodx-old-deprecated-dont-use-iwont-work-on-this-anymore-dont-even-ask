include_directories(
	    .
        ${SRCPATH}/public/
        ${SRCPATH}/public/amtl/
        ${SRCPATH}/public/amtl/amtl/
        ${SRCPATH}/public/sdk/
        ${SRCPATH}/public/memtools/
        ${SRCPATH}/third_party/
        ${SRCPATH}/third_party/hashing
        ${SRCPATH}/third_party/utf8rewind
)
add_definitions(-Dstricmp=strcasecmp -D_snprintf=snprintf)

if( CMAKE_SYSTEM_NAME STREQUAL "Linux" )
	add_definitions(-DLINUX)
endif()

macro(set_default_target_properties shorttgt)
	target_link_libraries(amxx_${shorttgt} ${CMAKE_DL_LIBS})
	set_target_properties(amxx_${shorttgt} PROPERTIES
		POSITION_INDEPENDENT_CODE 1
		OUTPUT_NAME "${shorttgt}_amxx_${TARGET_ARCHITECTURE}" PREFIX "")
endmacro()

macro(implement_install tgt)
	install(TARGETS ${tgt}
		DESTINATION /addons/amxmodx/modules/ # Into destdir
		PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE #rwxr-x-r-x
		    GROUP_READ GROUP_EXECUTE
			WORLD_READ WORLD_EXECUTE)
endmacro()
