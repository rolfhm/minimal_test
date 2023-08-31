subroutine acraneb2(miniobject, mudobject)

  use minimod, only: minitype
  use mudmod,  only: mudtype

  implicit none

  type(minitype), intent(in) :: miniobject
  type(mudtype), intent(in)  :: mudobject

  integer :: m, n

  m = miniobject%x
  n = miniobject%y

  m = mudobject%miniobject%x
  n = mudobject%miniobject%y

end subroutine acraneb2
