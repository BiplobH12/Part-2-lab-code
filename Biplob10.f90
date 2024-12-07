program biplob10
implicit none
integer :: i, j, m, n, p, flag, si

do
    ! Input the serial number
    print *, "Enter the serial number (serial /= 0):"
    read *, si
    if (si == 0) exit

    ! Input the range [m, n]
    print *, "Enter the value of range m=? and n=?"
    read *, m, n

    ! Initialize the prime counter
    p = 0
    print *, "The required Prime numbers are:"

    ! Loop through the range [m, n]
    do i = m, n
        if (i <= 1) cycle  ! Skip non-prime cases for 0 and 1

        flag = 1  ! Assume the number is prime
        do j = 2, int(sqrt(real(i)))  ! Check divisors up to sqrt(i)
            if (mod(i, j) == 0) then
                flag = 0  ! Number is not prime
                exit
            end if
        end do

        if (flag == 1) then
            print *, i  ! Print the prime number
            p = p + 1   ! Count the prime
        end if
    end do

    ! Output the total number of primes
    print *, "The number of prime numbers =", p
end do

end program biplob10
