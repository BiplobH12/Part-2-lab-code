program biplob13
implicit none
integer::n,si,sum,rev,x
do
print*,"Enter the serial number(serial/=0)"
read*,si
if(si==0)exit
print*,"Enter the number"
read*,n
sum=0
rev=0
do
if(n==0)exit
x=mod(n,10)
rev=10*rev+x
n=n/10
sum=sum+x
end do
print*,"sum of the digits=",sum
print*,"Reverse of number=",rev
end do 
end program biplob13

