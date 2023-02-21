
set( LOKI_FRONTEND "fp" CACHE STRING "Frontend parser for Loki transforms" )

loki_transform_convert(
    MODE scc-hoist FRONTEND ${LOKI_FRONTEND} CPP
    CONFIG  ${CMAKE_CURRENT_SOURCE_DIR}/../acraneb2-loki.config
    PATH    ${CMAKE_CURRENT_SOURCE_DIR}/../../src
    OUTPATH ${CMAKE_CURRENT_BINARY_DIR}
    OUTPUT  acraneb_solvs.scc_hoist.F90
            acraneb_coefs.scc_hoist.F90
            acraneb_solvt3.scc_hoist.F90
            acraneb_solvt.scc_hoist.F90
            acraneb_coeft.scc_hoist.F90
            acraneb_transt.scc_hoist.F90
            ac_cloud_model2.scc_hoist.F90
            acraneb_transs.scc_hoist.F90
            acraneb2.scc_hoist.F90
            wrapper_mod.scc_hoist.F90
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_solvs.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_coefs.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_solvt3.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_solvt.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_coeft.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_transt.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/ac_cloud_model2.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_transs.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb2.F90
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/wrapper_mod.F90
)

set(loki_src ${acraneb_src})

ecbuild_list_exclude_pattern(LIST loki_src REGEX acraneb_solvs.F90
                                                 acraneb_coefs.F90
                                                 acraneb_solvt3.F90
                                                 acraneb_solvt.F90
                                                 acraneb_coeft.F90
                                                 acraneb_transt.F90
                                                 ac_cloud_model2.F90
                                                 acraneb_transs.F90
                                                 acraneb2.F90
                                                 wrapper_mod.F90
)

set(loki_src ${CMAKE_CURRENT_BINARY_DIR}/acraneb_solvs.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_coefs.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_solvt3.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_solvt.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_coeft.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_transt.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/ac_cloud_model2.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_transs.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb2.scc_hoist.F90
             ${CMAKE_CURRENT_BINARY_DIR}/wrapper_mod.scc_hoist.F90
             ${loki_src})

ecbuild_add_executable(TARGET dwarf-acraneb2-loki-scc-hoist
                       SOURCES ${loki_src})

