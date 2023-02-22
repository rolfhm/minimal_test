program main

  use parkind1, only : jpim
  use wrapper_mod, only: wrapper

  implicit none

  integer(kind=jpim) :: nproma, nlev, nblock

  nproma=32
  nlev=87
  nblock = 10

  call wrapper(nproma, nlev, nblock)

end program main
