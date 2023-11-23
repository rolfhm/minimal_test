module wrapper_mod

  contains

  subroutine wrapper(klon, klev, kgpblk)

    use parkind1, only: jpim, jprb

    use model_physics_mf_mod , only : model_physics_mf_type

    implicit none

    type(model_physics_mf_type) :: ydml_phy_mf

    integer(kind=jpim), intent(in) :: klon
    integer(kind=jpim), intent(in) :: klev
    integer(kind=jpim), intent(in) :: kgpblk

    integer(kind=jpim) :: kidia
    integer(kind=jpim) :: kfdia

#include "ac_cloud_model2.intfb.h"

    kidia = 1
    kfdia = klon

    call ac_cloud_model2(ydml_phy_mf%yrphy3, klon, klev, kidia, kfdia)

  end subroutine wrapper

end module wrapper_mod
