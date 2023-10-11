
set( LOKI_FRONTEND "fp" CACHE STRING "Frontend parser for Loki transforms" )

loki_transform(
    COMMAND convert
    MODE scc
    FRONTEND ${LOKI_FRONTEND}
    CPP
    INLINE_MEMBERS
    CONFIG   ${CMAKE_CURRENT_SOURCE_DIR}/../acraneb2-loki.config
    SOURCES  ${CMAKE_CURRENT_SOURCE_DIR}/../../src
    BUILDDIR ${CMAKE_CURRENT_BINARY_DIR}
    OUTPUT   acraneb_transt.scc.F90
             acraneb2.scc.F90
             wrapper_mod.scc.F90
    DEPENDS  ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_transt.F90
             ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb2.F90
             ${CMAKE_CURRENT_SOURCE_DIR}/../../src/wrapper_mod.F90
)

set(loki_src ${acraneb_src})

ecbuild_list_exclude_pattern(LIST loki_src REGEX acraneb_transt.F90
                                                 acraneb2.F90
                                                 wrapper_mod.F90
)

set(loki_src ${CMAKE_CURRENT_BINARY_DIR}/acraneb_transt.scc.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb2.scc.F90
             ${CMAKE_CURRENT_BINARY_DIR}/wrapper_mod.scc.F90
             ${loki_src})

ecbuild_add_executable(TARGET dwarf-acraneb2-loki-scc
                       SOURCES ${loki_src})

