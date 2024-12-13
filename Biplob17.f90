program biplob17
implicit none
real::x
integer::si,n
do 
print*,"Enter the serial number"
read*,si
if(si==0)Exit
print*,"Enter the number of term"
read*,n
10 format (1X,"Product=",f14.7) 
print 10,x(n)
end do
end program biplob17
real function x(n)
implicit none
integer,intent(in)::n
integer::i
do i=1,n
x=x+(1/(real(i))**2)
end do

end function