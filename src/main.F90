program main

  use parkind1, only: jpim
  use wrapper_mod, only: wrapper
  use model_physics_mf_mod , only : model_physics_mf_type

  implicit none

  type(model_physics_mf_type) :: ydml_phy_mf
  integer(kind=jpim) :: nproma, nlev, ngpblock

  nproma=32
  nlev=87
  ngpblock=10

  call wrapper(nproma, nlev, ngpblock, ydml_phy_mf)

end program main
