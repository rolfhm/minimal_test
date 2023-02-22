subroutine acraneb_transt(klon, klev, kidia, kfdia, ktdia, pqco2)

  use parkind1, only: jpim, jprb
  use yomcst,   only: rd, rv

  implicit none

  integer(kind=jpim), intent(in) :: klon
  integer(kind=jpim), intent(in) :: klev

  integer(kind=jpim), intent(in) :: kidia
  integer(kind=jpim), intent(in) :: kfdia
  integer(kind=jpim), intent(in) :: ktdia

  real(kind=jprb), intent(in) :: pqco2(klon,klev)

  integer(kind=jpim) :: jlon

  real(kind=jprb) :: znsor(klon)
  real(kind=jprb) :: zdelp(klon)
  real(kind=jprb) :: zdu(klon, 4)
  real(kind=jprb) :: zq(klon, klev)

  do jlon=kidia,kfdia
    zdu(jlon,1)=2._jprb*zdelp(jlon)*zq(jlon,ktdia)
    zdu(jlon,2)=2._jprb*zdelp(jlon)*pqco2(jlon,ktdia)*(1._jprb-zq(jlon,ktdia))
    zdu(jlon,3)=znsor(jlon)*(1._jprb-zq(jlon,ktdia))
    zdu(jlon,4)=zdu(jlon,1)*rv*zq(jlon,ktdia)/(rd+(rv-rd)*zq(jlon,ktdia))
  enddo

  do jlon=kidia,kfdia
    zdu(jlon,1)=2._jprb*zdelp(jlon)*zq(jlon,ktdia)
    zdu(jlon,2)=2._jprb*zdelp(jlon)*pqco2(jlon,ktdia)*(1._jprb-zq(jlon,ktdia))
    zdu(jlon,3)=znsor(jlon)*(1._jprb-zq(jlon,ktdia))
    zdu(jlon,4)=zdu(jlon,1)*rv*zq(jlon,ktdia)/(rd+(rv-rd)*zq(jlon,ktdia))
  enddo

end subroutine acraneb_transt
