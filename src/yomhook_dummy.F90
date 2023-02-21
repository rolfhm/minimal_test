module yomhook
use parkind1, only : jprb
implicit none
logical :: lhook=.false.
contains
subroutine dr_hook(cdstr,ki,phook)
  character(len=*) :: cdstr
    integer :: ki
    real(kind=jprb) :: phook
    if (.false.) then
        print *, cdstr, ki, phook
    endif
end subroutine dr_hook
end module
