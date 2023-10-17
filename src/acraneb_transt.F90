subroutine acraneb_transt(klon, klev, kidia, kfdia, ktdia)

  use parkind1, only: jpim, jprb
  use xxx, only: blabla, bloblo

  implicit none

  integer(kind=jpim), intent(in) :: klon
  integer(kind=jpim), intent(in) :: klev

  integer(kind=jpim), intent(in) :: kidia
  integer(kind=jpim), intent(in) :: kfdia
  integer(kind=jpim), intent(in) :: ktdia

  integer(kind=jpim) :: jlon, jlev, i

  type(blabla) :: lala

  real(kind=jprb) :: za
  real(kind=jprb) :: zq1(klon)
  real(kind=jprb) :: zq2(klon, klev)

  call delta_t(zq1, lala%lolo)

  do jlev = ktdia, klev
    call delta_t(zq2(1:klon,jlev), lala%lolo)
  enddo

contains

subroutine delta_t(pq, lolo)

  implicit none

  real(kind=jprb), intent(in) :: pq(klon)

  type(lolo), intent(in) :: lolo

  real(kind=jprb) :: za(klon,lolo%lulu)

  real(kind=jprb) :: x, z

  associate(zz => z)

  do i = 1,lolo%lulu
    do jlon = 1,klon
      za(jlon,i) = za(jlon,i) + pq(jlon)
    enddo
  enddo

  end associate

end subroutine

end subroutine acraneb_transt
