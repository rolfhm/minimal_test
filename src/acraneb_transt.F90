subroutine acraneb_transt(klon, klev, kidia, kfdia, ktdia, pqco2)

  use parkind1, only: jpim, jprb

  implicit none

  integer(kind=jpim), intent(in) :: klon
  integer(kind=jpim), intent(in) :: klev

  integer(kind=jpim), intent(in) :: kidia
  integer(kind=jpim), intent(in) :: kfdia
  integer(kind=jpim), intent(in) :: ktdia

  real(kind=jprb), intent(in) :: pqco2(klon,klev)

  integer(kind=jpim) :: jlon, jlev

  real(kind=jprb) :: zq1(klon)
  real(kind=jprb) :: zq2(klon, klev)
  real(kind=jprb) :: zzz(klon, klev)

  call delta_t(ktdia, zq1, zzz(1, 1))

  do jlev = ktdia, klev
    call delta_t(jlev, zq2(1,jlev), zzz(1,jlev))
  enddo

contains

subroutine delta_t(kl, pq, pzz)

  implicit none

  integer(kind=jpim), intent(in) :: kl
  real(kind=jprb), intent(in) :: pq(klon)
  real(kind=jprb), intent(in) :: pzz(klon)

  real(kind=jprb) :: x, y

  do jlon = 1,klon
    x = x + pq(jlon)
    y = y + pzz(jlon)
  enddo

end subroutine

end subroutine acraneb_transt
