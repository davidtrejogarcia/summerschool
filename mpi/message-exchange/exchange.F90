program exchange
  use mpi_f08
  implicit none
  integer, parameter :: arraysize = 100000, msgsize = 100
  integer :: rc, myid, ntasks, nrecv
  type(mpi_status) :: status
  integer :: message(arraysize)
  integer :: receiveBuffer(arraysize)

  call mpi_init(rc)
  call mpi_comm_rank(MPI_COMM_WORLD, myid, rc)
  call mpi_comm_size(MPI_COMM_WORLD, ntasks, rc)

  message = myid
  receiveBuffer = -1

  ! TODO: Implement sending and receiving as defined in the assignment
  ! Send msgsize elements from the array "message", and receive into
  ! "receiveBuffer"
  if (myid == 0) then

     write(*,'(A10,I3,A10,I3, A17, I3)') 'Rank: ', myid, &
          ' received ', nrecv, ' elements, first ', receiveBuffer(1)
  else if (myid == 1) then

     write(*,'(A10,I3,A10,I3, A17, I3)') 'Rank: ', myid, &
          ' received ', nrecv, ' elements, first ', receiveBuffer(1)
  end if

  call mpi_finalize(rc)

end program exchange
