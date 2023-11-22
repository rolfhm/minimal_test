subroutine acraneb2(ydml_phy_mf, klon, klev, kidia, kfdia)

    use parkind1, only: jpim, jprb
    use model_physics_mf_mod , only : model_physics_mf_type

    implicit none

    type(model_physics_mf_type), intent(inout) :: ydml_phy_mf

    integer(kind=jpim), intent(in) :: klon
    integer(kind=jpim), intent(in) :: klev
    integer(kind=jpim), intent(in) :: kidia
    integer(kind=jpim), intent(in) :: kfdia

#include "ac_cloud_model2.intfb.h"

    call ac_cloud_model2(ydml_phy_mf%yrphy3, klon, klev, kidia, kfdia)

end subroutine acraneb2
