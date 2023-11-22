subroutine ac_cloud_model2(ydphy3, klon, klev, kidia, kfdia)

    use parkind1 ,only: jpim     ,jprb

    use yomphy3  ,only : tphy3

    implicit none

    type(tphy3), intent(inout) :: ydphy3

    integer(kind=jpim), intent(in) :: klon
    integer(kind=jpim), intent(in) :: klev
    integer(kind=jpim), intent(in) :: kidia
    integer(kind=jpim), intent(in) :: kfdia

    integer(kind=jpim) :: jb, jlev, jlon

    real(kind=jprb) :: zde1(klon, klev, ydphy3%n_spband)

    do jb = 1, ydphy3%n_spband
      do jlev = 1, klev
        do jlon = kidia, kfdia
  
          zde1(jlon, jlev, jb) = 0._jprb
  
        enddo
      enddo
    enddo

end subroutine ac_cloud_model2
