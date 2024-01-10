module parkind1
!
!     *** define usual kinds for strong typing ***
!
implicit none
save
!
!     integer kinds
!     -------------
!
integer, parameter :: jpit = selected_int_kind(2)
integer, parameter :: jpis = selected_int_kind(4)
integer, parameter :: jpim = selected_int_kind(9)
integer, parameter :: jpib = selected_int_kind(12)

!special integer type to be used for sensative adress calculations
!should be *8 for a machine with 8byte adressing for optimum performance
#ifdef address64
integer, parameter :: jpia = jpib
#else
integer, parameter :: jpia = jpim
#endif

!
!     real kinds
!     ----------
!
integer, parameter :: jprt = selected_real_kind(2,1)
integer, parameter :: jprs = selected_real_kind(4,2)
integer, parameter :: jprm = selected_real_kind(6,37)
#ifdef parkind1_single
integer, parameter :: jprb = selected_real_kind(6,37)
#else
integer, parameter :: jprb = selected_real_kind(13,300)
#endif

! double real for c code and special places requiring
!    higher precision.
integer, parameter :: jprd = selected_real_kind(13,300)


! logical kinds for rttov....

integer, parameter :: jplm = jpim   !standard logical type

end module parkind1
