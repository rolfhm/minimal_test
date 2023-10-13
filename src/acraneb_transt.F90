subroutine acraneb_transt(klon, klev, kidia, kfdia, ktdia)

  use parkind1, only: jpim, jprb

  implicit none

  integer(kind=jpim), intent(in) :: klon
  integer(kind=jpim), intent(in) :: klev

  integer(kind=jpim), intent(in) :: kidia
  integer(kind=jpim), intent(in) :: kfdia
  integer(kind=jpim), intent(in) :: ktdia

  integer(kind=jpim) :: jlon, jlev, i

  real(kind=jprb) :: za
  real(kind=jprb) :: zq1(klon)
  real(kind=jprb) :: zq2(klon, klev)

  call delta_t(zq1)

  do jlev = ktdia, klev
    call delta_t(zq2(1:klon,jlev))
  enddo

contains

subroutine delta_t(pq)

  implicit none

  real(kind=jprb), intent(in) :: pq(klon)

  real(kind=jprb) :: za(klon,3)

  real(kind=jprb) :: x, z

  associate(zz => z)

  do i = 1,3
    do jlon = 1,klon
      za(jlon,i) = za(jlon,i) + pq(jlon)
    enddo
  enddo

  end associate

end subroutine

end subroutine acraneb_transt
