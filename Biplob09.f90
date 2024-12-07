program biplob09
implicit none
integer::n,i,j,t
real,allocatable,dimension(:)::a
print*,"Enter the number of value you want"
read*,n
allocate(a(n))
print*,"Enter the all number"
read*,(a(i),i=1,n)
do i=1,n-1
do j=i+1,n
if(a(i)>a(j))then
t=a(i)
a(i)=a(j)
a(j)=t
end if
end do
end do
print*,"This is the ascending order"
do i=1,n
print*,a(i)
end do 
  do i=1,n-1
  do j=i+1,n
if(a(i)<a(j))then
t=a(i)
a(i)=a(j)
a(j)=t
end if
end do
end do

print*,"This is the descending order"
do i=1,n
print*,a(i)
end do
end program biplob09