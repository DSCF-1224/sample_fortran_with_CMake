module pkg_sample

    use , intrinsic :: iso_fortran_env

    implicit none

    contains

    subroutine show_compiler_version

        print * , compiler_version()
        return

    end subroutine show_compiler_version

end module pkg_sample
