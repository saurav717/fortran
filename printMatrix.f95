subroutine printMatrix(a,rows,columns)
  implicit none

  integer, intent(in) :: rows, columns
  real, dimension(rows, columns) :: a
  integer :: rowCount, columnCount

  format(f7.2)

  do rowCount = 1 , rows
    do columnCount = 1, columns
    write(*,10, advance = 'no') a(rowCount, columnCount)
    end do
    write(*,*)
  end do

end subroutine printMatrix
