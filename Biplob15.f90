program biplob15
implicit none
real::x,a,b
integer::n,si,i
do
print*,"Enter the serial number"
read*,si
if(si==0)Exit
print*,"Enter the value of a and b"
read*,a,b
print*,"Enter the term number"
read*,n
do i=1,n
if((a+i*b)==0)then
print*,"product of seris id undefine"
exit
end if
end do
print*,"Product =",x(a,b,n)

end do 
end program biplob15
real function x(a,b,n)
implicit none
real,intent(in)::a,b
integer,intent(in)::n
integer::i
x=1.0
 do i=1,n
x=x*(i/real(a+i*b))
end do
end function

