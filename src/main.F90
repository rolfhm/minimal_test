program main

  use parkind1, only : jpim
  use wrapper_mod, only: wrapper

  implicit none

  integer(kind=jpim) :: nproma,nlev

  nproma=32
  nlev=87

  call wrapper(nproma, nlev)

end program main
