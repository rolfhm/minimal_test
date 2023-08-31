subroutine acraneb2(mudobject)

  use mudmod,  only: mudtype

  implicit none

  type(mudtype), intent(inout) :: mudobject

  integer :: m, n

  m = mudobject%miniobject%x
  n = mudobject%miniobject%y

end subroutine acraneb2
