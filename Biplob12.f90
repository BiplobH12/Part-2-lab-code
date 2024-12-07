program biplob12
implicit none
integer::si,i,n
integer,dimension(0:20)::fibo
fibo(0)=0
fibo(1)=1
do
print*,"Enter the serial number(serial/=0)"
read*,si
if(si==0)Exit
print*,"Enter the value of n"
read*,n
do i=2,n
fibo(i)=fibo(i-2)+fibo(i-1)
end do
print*,"Fibonacci sequence is"
do i=1,n
print*,fibo(i)
end do
end do
end program biplob12
