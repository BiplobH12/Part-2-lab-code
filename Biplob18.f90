real function s(a,b,n)
implicit none
real,intent(in)::a,b
integer,intent(in)::n
integer::i
s=0.0
do i=1,n
s=s+(i/real(a+(i-1)*b))
end do
end function s
program biplob18
implicit none
real::s,a,b
integer::si,i,n
do 
print*,"Enter the serial number"
read*,si
if(si==0)exit
print*,"Enter the value of a and b"
read*,a,b
print*,"Enter the number of term"
read*,n
do i=1,n
if((a+(i-1)*b)==0)then
print*,"Sum of the seris undefine"
exit
else
10 format(1x,"sum of seris=",f10.5)
print 10,s(a,b,n)
exit
end if
end do
end do
end program


