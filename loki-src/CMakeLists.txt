
ecbuild_find_package(NAME loki)
#include( FetchContent )
#
#FetchContent_Declare(
#    loki
#    GIT_REPOSITORY https://github.com/ecmwf-ifs/loki.git
#    GIT_TAG nabr-acraneb2-hackathon
#)
#
#FetchContent_MakeAvailable(loki)

add_subdirectory(scc)
