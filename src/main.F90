program main

  use parkind1, only : jpim
  use wrapper_mod, only: wrapper

  implicit none

  integer(kind=jpim) :: nblock

  nblock = 10

  call wrapper(nblock)

end program main
