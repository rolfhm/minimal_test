module stack_mod
    implicit none
    type stack
        integer*8 :: l, u
    end type
    private
    public :: stack
end module
