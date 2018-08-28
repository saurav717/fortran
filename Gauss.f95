program mainProgram
  implicit none

  real, dimension(:,:),allocatable :: a
  real, dimension(:), allocatable :: x
  integer :: n

  n = 3

  allocate(a(n,n+1))
  allocate(x(n))

  a(1,1) = 2
  a(1,2) = 1
  a(1,3) = 0
  a(1,4) = 1
  a(2,1) = 1
  a(2,2) = 2
  a(2,3) = 1
  a(2,4) = 2
  a(3,1) = 0
  a(3,2) = 1
  a(3,3) = 1
  a(3,4) = 4

  write(*,*) "the augmented matrix"
  call printMatrix(a,n,n+1)


  call gaussElimination(a,n,x)
  print*, "the matrix after Gauss Elimination"

  call printMatrix(a,n,n+1)

  write(*,*)

end program mainProgram
