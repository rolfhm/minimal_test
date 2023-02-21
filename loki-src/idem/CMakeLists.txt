
set( LOKI_FRONTEND "fp" CACHE STRING "Frontend parser for Loki transforms" )

loki_transform_convert(
    MODE idem FRONTEND ${LOKI_FRONTEND} CPP
    CONFIG  ${CMAKE_CURRENT_SOURCE_DIR}/../acraneb2-loki.config
    PATH    ${CMAKE_CURRENT_SOURCE_DIR}/../../src
    OUTPATH ${CMAKE_CURRENT_BINARY_DIR}
    OUTPUT  acraneb_solvs.idem.F90 
            acraneb_coefs.idem.F90 
            acraneb_solvt3.idem.F90 
            acraneb_solvt.idem.F90 
            acraneb_coeft.idem.F90 
            ac_cloud_model2.idem.F90 
            acraneb_transt.idem.F90
            acraneb_transs.idem.F90
            acraneb2.idem.F90
            wrapper_mod.idem.F90
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_solvs.F90 
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_coefs.F90 
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_solvt3.F90 
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_solvt.F90 
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_coeft.F90 
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/ac_cloud_model2.F90 
            ${CMAKE_CURRENT_SOURCE_DIR}/../../src/acraneb_transt.F90
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
                                                 ac_cloud_model2.F90 
                                                 acraneb_transt.F90
                                                 acraneb_transs.F90
                                                 acraneb2.F90
                                                 wrapper_mod.F90
)

set(loki_src ${CMAKE_CURRENT_BINARY_DIR}/acraneb_solvs.idem.F90 
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_coefs.idem.F90 
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_solvt3.idem.F90 
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_solvt.idem.F90 
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_coeft.idem.F90 
             ${CMAKE_CURRENT_BINARY_DIR}/ac_cloud_model2.idem.F90 
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_transt.idem.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb_transs.idem.F90
             ${CMAKE_CURRENT_BINARY_DIR}/acraneb2.idem.F90
             ${CMAKE_CURRENT_BINARY_DIR}/wrapper_mod.idem.F90
             ${loki_src})

ecbuild_add_executable(TARGET dwarf-acraneb2-loki-idem
                       SOURCES ${loki_src})

