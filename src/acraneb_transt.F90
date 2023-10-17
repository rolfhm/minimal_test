subroutine acraneb_transt(klon, kidia, kfdia)

  use parkind1, only: jpim, jprb
  use xxx, only: blabla, bloblo

  implicit none

  integer(kind=jpim), intent(in) :: klon

  integer(kind=jpim), intent(in) :: kidia
  integer(kind=jpim), intent(in) :: kfdia

  integer(kind=jpim) :: jlon, i

  type(blabla) :: lala

  real(kind=jprb) :: zq1(klon)

  call delta_t(zq1, lala%lolo)

contains

subroutine delta_t(pq, lyly)

  implicit none

  real(kind=jprb), intent(in) :: pq(klon)

  type(lolo), intent(in) :: lyly

  real(kind=jprb) :: za(klon,lyly%lulu)

  do i = 1,lyly%lulu
    do jlon = 1,klon
      za(jlon,i) = za(jlon,i) + pq(jlon)
    enddo
  enddo

end subroutine

end subroutine acraneb_transt
