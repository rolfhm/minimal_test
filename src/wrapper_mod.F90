module wrapper_mod

  contains

  subroutine wrapper(kgpblk)

    use parkind1, only: jpim, jprb
    use minimod,  only: minitype
    use mudmod,   only: mudtype

    implicit none

    integer(kind=jpim), intent(in) :: kgpblk

    type(minitype) :: miniobject
    type(mudtype) :: mudobject

    integer :: jblk


#include "acraneb2.intfb.h"

    miniobject%x = 1
    miniobject%y = 1

    mudobject%miniobject%x = 1
    mudobject%miniobject%y = 2

    do jblk = 1, kgpblk

      call acraneb2(miniobject, mudobject)

    enddo

  end subroutine wrapper

end module wrapper_mod
