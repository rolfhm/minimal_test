module model_physics_mf_mod
  use yomphy3  , only : tphy3

  implicit none
  
  type model_physics_mf_type

  type(tphy3)   :: yrphy3 !! radiation-related parameters

  end type model_physics_mf_type

end module model_physics_mf_mod
