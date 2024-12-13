program biplob16
implicit none
real::a,b,r,x
integer::si,n,i
do 
print*,"Enter the serial number"
read*,si
if(si==0)Exit
print*,"Enter the value of a,b,r and n"
read*,a,b,r,n
do i=1,n
if((r+i*a)==0)then
print*,"The product of seris is undefine"
exit
end if
end do
10 format (1X,"Product=",f14.7) 
print 10,x(a,b,r,n)
end do
end program biplob16
real function x(a,b,r,n)
implicit none
real,intent(in)::a,b,r
integer,intent(in)::n
integer::i
 x=1.0
do i=1,n
x=x*((b*i)/real((r+(i-1)*a)**i))
end do

end function