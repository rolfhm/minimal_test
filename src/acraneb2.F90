subroutine acraneb2(mudobject)

  use mudmod,  only: mudtype

  implicit none

  type(mudtype), intent(inout) :: mudobject

  integer :: m, n

  associate(x => mudobject%miniobject%x, y => mudobject%miniobject%y)

    m = x
    n = y

  end associate

end subroutine acraneb2
