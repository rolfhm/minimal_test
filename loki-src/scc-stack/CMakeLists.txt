
set( LOKI_FRONTEND "fp" CACHE STRING "Frontend parser for Loki transforms" )

loki_transform(
    COMMAND convert
    MODE scc-stack
    FRONTEND  ${LOKI_FRONTEND}
    CPP
    INLINE_MEMBERS
    RESOLVE_SEQUENCE_ASSOCIATION
    CONFIG   ${CMAKE_CURRENT_SOURCE_DIR}/../acraneb2-loki.config
    SOURCES  ${CMAKE_CURRENT_SOURCE_DIR}/../../src
    BUILDDIR ${CMAKE_CURRENT_BINARY_DIR}
    OUTPUT  ac_cloud_model2.scc_stack.F90
            wrapper_mod.scc_stack.F90
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/../../src/ac_cloud_model2.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/wrapper_mod.F90
)

set(loki_src ${acraneb_src})

ecbuild_list_exclude_pattern(LIST loki_src REGEX ac_cloud_model2.F90
                                                 wrapper_mod.F90
)

set(loki_src ${CMAKE_CURRENT_BINARY_DIR}/ac_cloud_model2.scc_stack.F90
             ${CMAKE_CURRENT_BINARY_DIR}/wrapper_mod.scc_stack.F90
             ${loki_src})

ecbuild_add_executable(TARGET dwarf-acraneb2-loki-scc-stack
                       SOURCES ${loki_src})

