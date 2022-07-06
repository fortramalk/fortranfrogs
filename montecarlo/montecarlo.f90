program montecarlo

    implicit none

    integer :: n, c, s, i
    real :: P(2), pi, T1, T2
    
    n = 10**7
    c = 0
    s = 0

    call cpu_time(T1)

    do i = 1, n
        if (i > n) then
            exit
        end if 

        P(1) = rand(0)
        P(2) = rand(0)

        if (P(1)**2.0 + P(2)**2.0 > 1) then
            s = s + 1
        else 
            c = c + 1
        end if

    end do

    pi = 4 * real(c)/real(s + c)

    call cpu_time(T2)

    print *, pi
    print *, "Execution time: ", T2 - T1

end program montecarlo
