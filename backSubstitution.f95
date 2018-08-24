subroutine backSubstitution

  implicit none
  integer, intent(in) :: n
  real, dimension(n, n+1), intent(in) :: a
  real, dimension(n), intent(out) :: x
  integer :: rowCount, columnCount
  real :: summation

  summation = 0
  x(n) = a(n, n+1)/ a(n,n)

  do rowCount = n-1, 1 , -1
    do columnCount = n+1, 1, -1
      summation = summation + a(cowCount, columnCount)*x(columnCount)
    end do
      x(rowCount) = (a(rowCount, n+1) - summation))/a(rowCount, rowCount)
      summation = 0
  end do

end subroutine backSubstitution
