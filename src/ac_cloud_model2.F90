subroutine ac_cloud_model2(ydphy3, klon, klev, kidia, kfdia, pzz)

    use parkind1 ,only: jpim     ,jprb

    use yomphy3  ,only : tphy3

    implicit none

    type(tphy3), intent(in) :: ydphy3

    integer(kind=jpim), intent(in) :: klon
    integer(kind=jpim), intent(in) :: klev
    integer(kind=jpim), intent(in) :: kidia
    integer(kind=jpim), intent(in) :: kfdia

    real(kind=jprb), intent(in), dimension(klon, klev) :: pzz

    integer(kind=jpim) :: jb, jlev, jlon

    real(kind=jprb) :: zde1(klon, 0:klev, ydphy3%n_spband)
    real(kind=jprb) :: zde2(klon, klev, ydphy3%n_spband)
    real(kind=jprb) :: zde3(klon, 1:klev)


    do jb = 1, ydphy3%n_spband
      zde1(:, 0, jb) = 0._jprb
      do jlev = 1, klev
        do jlon = kidia, kfdia
  
          zde1(jlon, jlev, jb) = 1._jprb
          zde2(jlon, jlev, jb) = 0._jprb
  
        enddo
      enddo
    enddo

    zde3(1:klon,1:klev) = pzz

end subroutine ac_cloud_model2
