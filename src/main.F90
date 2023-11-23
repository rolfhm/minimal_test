program main

  use parkind1, only : jpim
  use wrapper_mod, only: wrapper

  implicit none

  integer(kind=jpim) :: nproma, nlev, ngpblock

  nproma=32
  nlev=87
  ngpblock=10

  call wrapper(nproma, nlev, ngpblock)

end program main
