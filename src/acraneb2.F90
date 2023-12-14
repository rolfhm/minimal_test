subroutine acraneb2(ydml_phy_mf, klon, klev, kidia, kfdia, pzz)

  use parkind1, only: jpim, jprb

  use model_physics_mf_mod , only : model_physics_mf_type

  implicit none

  type(model_physics_mf_type), intent(in) :: ydml_phy_mf

  integer(kind=jpim), intent(in) :: klon
  integer(kind=jpim), intent(in) :: klev

  integer(kind=jpim), intent(in) :: kidia
  integer(kind=jpim), intent(in) :: kfdia

  real(kind=jprb), intent(in), dimension(klon, klev) :: pzz

  real(kind=jprb), dimension(klon, klev) :: zzx

  integer :: jlon, jlev

#include "ac_cloud_model2.intfb.h"

  do jlon =1, klon 
    do jlev = 1, klev
      zzx(jlon, jlev) = pzz(jlon, jlev)
    enddo
  enddo

  call ac_cloud_model1(ydml_phy_mf%yrphy3, klon, klev, kidia, kfdia)
  call ac_cloud_model2(ydml_phy_mf%yrphy3, klon, klev, kidia, kfdia, pzz)

end subroutine acraneb2
