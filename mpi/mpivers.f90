! https://github.com/open-mpi/ompi/blob/master/examples/hello_usempif08.f90

use, intrinsic :: iso_fortran_env
use mpi  ! Windows Intel 2019 MPI doesn't have mpi_f08 yet (grrr)
implicit none
integer :: ierr, mrank, msize, vlen
character(MPI_MAX_LIBRARY_VERSION_STRING) :: version  ! allocatable not ok

print *,compiler_version()

call MPI_INIT(ierr)
call MPI_COMM_RANK(MPI_COMM_WORLD, mrank, ierr)
call MPI_COMM_SIZE(MPI_COMM_WORLD, msize, ierr)
call MPI_GET_LIBRARY_VERSION(version, vlen, ierr)

print '(A,I3,A,I3,A)', 'Image ', mrank, ' / ', msize, ':',version

call MPI_FINALIZE(ierr)

end program
