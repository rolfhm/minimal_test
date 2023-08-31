module mudmod

  use minimod,  only: minitype
  
  implicit none

  type mudtype

    type(minitype) :: miniobject

  end type mudtype

end module mudmod
