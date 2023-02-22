subroutine acraneb2(klon, klev, kidia, kfdia, ktdia)

  use parkind1, only: jpim, jprb

  implicit none

  integer(kind=jpim), intent(in) :: klon
  integer(kind=jpim), intent(in) :: klev

  integer(kind=jpim), intent(in) :: kidia
  integer(kind=jpim), intent(in) :: kfdia
  integer(kind=jpim), intent(in) :: ktdia

  real(kind=jprb) :: pqco2(klon,klev)

#include "acraneb_transt.intfb.h"

  call acraneb_transt(klon, klev, kidia, kfdia, ktdia, pqco2)

end subroutine acraneb2
