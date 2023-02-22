module wrapper_mod

  contains

  subroutine wrapper(klon, klev, kgpblk)

    use parkind1, only: jpim, jprb

    implicit none

    integer(kind=jpim), intent(in) :: klon
    integer(kind=jpim), intent(in) :: klev
    integer(kind=jpim), intent(in) :: kgpblk

    integer(kind=jpim) :: kidia
    integer(kind=jpim) :: kfdia
    integer(kind=jpim) :: ktdia

    integer(kind=jpim) :: jblk

#include "acraneb2.intfb.h"

    kidia = 1
    kfdia = klon
    ktdia = 1

    do jblk = 1, kgpblk

      call acraneb2(klon, klev, kidia, kfdia, ktdia)

    enddo

  end subroutine wrapper

end module wrapper_mod
