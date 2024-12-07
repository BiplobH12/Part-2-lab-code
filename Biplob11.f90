program biplob11
implicit none
real::u,v,w
integer::i
do
print*,"Enter the serial number"
read*,i
if(i==0)Exit
print*,"Enter the value of u,v And w"
read*,u,v,w
if(u>v.and.u>w)then
print*,u,"Is the biggest number"
else if(v>u.and.v>w)then
print*,v,"Is the biggest number"
else 
print*,w,"Is the biggest number"
end if
end do
end program biplob11

