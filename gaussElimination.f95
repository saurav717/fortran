subroutine gaussElimination(a,n,x)
  implicit none

  integer, intent(in) :: n
  real, dimension(n,n+1), intent(in) :: a
  real, dimension(n), intent(out) :: x
  real :: pivot, factor
  integer :: pivotRow, pivotColumn, stepCount
  integer :: rowCount, columnCount

  do stepCount = 1, n-1, 1
    pivotColumn = stepCount
    pivotColumn = stepCount
    pivot = a(pivotRow, pivotColumn)
    do rowCount = pivotRow +1, n
      factor = a(rowCount, pivotColumn)/pivot
        do columnCount = pivotColumn, n+1

        end do
    end do
  end do


end subroutine gausselimination
