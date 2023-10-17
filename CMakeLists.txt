set(CMAKE_POLICY_DEFAULT_CMP0074 NEW)

cmake_minimum_required(VERSION 3.11)

find_package(ecbuild REQUIRED)

project(dwarf-acraneb2 LANGUAGES Fortran)

ecbuild_list_add_pattern(LIST acraneb_src GLOB ${CMAKE_CURRENT_SOURCE_DIR}/src/*.F90)

if(CMAKE_Fortran_COMPILER_ID MATCHES GNU)
    set(CMAKE_Fortran_FLAGS ${CMAKE_Fortran_FLAGS} "-fopenmp -fconvert=swap -Wall")
endif()

if(CMAKE_Fortran_COMPILER_ID MATCHES NVHPC)
    set(CMAKE_Fortran_FLAGS ${CMAKE_Fortran_FLAGS} "-byteswapio -Mlarge_arrays -fast -acc=gpu -Minfo=accel,all,intensity,ccff -gpu=lineinfo,deepcopy -O3 -Mcuda -DUSE_ACC -DUSE_STACK -DUSE_DATAREGION")
endif()

#ecbuild_add_executable( TARGET dwarf-acraneb2
#                        SOURCES ${acraneb_src}
#)

add_subdirectory(loki-src)
