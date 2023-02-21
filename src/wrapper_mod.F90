module wrapper_mod

  contains

  subroutine wrapper(klon,klev)

    use parkind1, only: jpim, jprb

    implicit none

    integer(kind=jpim), intent(in) :: klon
    integer(kind=jpim), intent(in) :: klev

    call acraneb2(klon, klev)

  end subroutine wrapper

end module wrapper_mod
