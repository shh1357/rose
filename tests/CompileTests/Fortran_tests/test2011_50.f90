program equiv
      real , dimension(6,6) :: gjp, gjw
      real, dimension(36)   :: gjc
      real :: a,b
!-----------------------------------------------
      equivalence (a,b)
      data a /1.0D0/
      equivalence  ( gjp(1,1), gjw(1,1) )
      equivalence  ( gjp(1,1), gjc(1) )
      data gjc/ 0.00000000, 0.55555556, 0.87393877, 0.95491150, 0.98046718, &
         0.99029084, 2.0000000, 0.00000000, 0.28606124, 0.65127016, 0.82660307&
         , 0.90725799, 0.72783448, 1.27216552, 0.00000000, 0.16932809, &
         0.47704397, 0.68412769, 0.27930792, 0.91696442, 0.80372766, 0.00000000&
         , 0.11094751, 0.35681753, 0.12472388, 0.51939018, 0.81385828, &
         0.54202764, 0.00000000, 0.07803490, 0.06299166, 0.29563548, 0.58554794&
         , 0.66869856, 0.38712636, 0.00000000/

       if (gjp(3,3) == gjw(3,3) ) then 
          print *, 'OK'
       else 
          print *,'FAILED'
       end if 
end program equiv
