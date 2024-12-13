program biplob14
implicit none
integer::si,n
real::t
do
print*,"Enter the serial number"
read*,si
if(si==0)exit
print*,"Enter the number of term "
read*,n
print*,"Sum=",t(n)
end do
end program biplob14
real function t(n)
implicit none
real::sum=1.0
integer,intent(in)::n
t=1.0
do i=1,n
t=t*((2.0*i-1)/(2.0*i))
end do
end function
