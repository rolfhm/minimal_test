module wrapper_mod

  contains

  subroutine wrapper(kgpblk)

    use parkind1, only: jpim, jprb
    use mudmod,   only: mudtype

    implicit none

    integer(kind=jpim), intent(in) :: kgpblk

    type(mudtype) :: mudobject

    integer :: jblk


#include "acraneb2.intfb.h"

    mudobject%miniobject%x = 1
    mudobject%miniobject%y = 2

    do jblk = 1, kgpblk

      call acraneb2(mudobject)

    enddo

  end subroutine wrapper

end module wrapper_mod
