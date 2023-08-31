
set( LOKI_FRONTEND "fp" CACHE STRING "Frontend parser for Loki transforms" )

loki_transform_convert(
    MODE idem FRONTEND ${LOKI_FRONTEND} CPP
    CONFIG  ${CMAKE_CURRENT_SOURCE_DIR}/../acraneb2-loki.config
    PATH    ${CMAKE_CURRENT_SOURCE_DIR}/../../src
    OUTPATH ${CMAKE_CURRENT_BINARY_DIR}
    OUTPUT  acraneb2.idem.F90
            wrapper_mod.idem.F90
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb2.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/wrapper_mod.F90
)

set(loki_src ${acraneb_src})

ecbuild_list_exclude_pattern(LIST loki_src REGEX acraneb2.F90
                                                 wrapper_mod.F90
)

set(loki_src ${CMAKE_CURRENT_BINARY_DIR}/acraneb2.idem.F90
             ${CMAKE_CURRENT_BINARY_DIR}/wrapper_mod.idem.F90
             ${loki_src})

ecbuild_add_executable(TARGET dwarf-acraneb2-loki-idem
                       SOURCES ${loki_src})

