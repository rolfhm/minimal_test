subroutine acraneb2(klon, klev)

  use parkind1, only: jpim, jprb

  implicit none

  integer(kind=jpim), intent(in) :: klon
  integer(kind=jpim), intent(in) :: klev

  integer(kind=jpim) :: kidia
  integer(kind=jpim) :: kfdia
  integer(kind=jpim) :: ktdia

#include "acraneb_transt.intfb.h"

  kidia = 1
  kfdia = klon
  ktdia = 1

  call acraneb_transt(klon, klev, kidia, kfdia, ktdia)

end subroutine acraneb2
