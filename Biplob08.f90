program biplob08
implicit none
real::a,b,c,d,e,r,img,x,x1,x2
integer::i,code
do
print*,"Enter the serial number(serial/=0)"
read*,i
if(i==0)Exit
print*,"Enter the value of a,b,c and d"
read*,a,b,c,d
e=c**2-4*(a+b)*d
if((a+b)==0)then
code=1
else
if(e>0)then
code=2
else if(e==0)then
code=3
else
code=4
end if
end if
select case(code)
case(1)
x=-d/c
print*,"This is not qudartic equation and root is x=",x
case(2)
x1=(-c+sqrt(e))/2*(a+b)
x2=(-c-sqrt(e))/2*(a+b)
print*,"The roots are real and unequal"
10 format(" x1=",f6.2,"  x2=",f6.2)
print 10,x1,x2
case(3)
x1=(-c)/2*(a+b)
x2=x1
print*,"The roots are real and equal"
11 format(" x1=",f6.2,"  x2=",f6.2)
print 11,x1,x2
case(4)
r=-c/2*(a+b)
img=(sqrt(abs(e)))/2*(a+b)
print*,"The roots are imaginary"
print*,"x1=",r,"+i",img,"x2=",r,"-i",img
end select
end do 
end program biplob08
