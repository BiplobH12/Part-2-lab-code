program biplob05
implicit none
real::x1,x2,x3,y1,y2,y3,a,b,c,r,ar,p,s,cf,ca
real,parameter::pi=3.1415925
integer::si
do
print*,"Enter the serial number"
read*,si
if(si==0)exit
print*,"Enter the 1st vertex's value x and y"
read*,x1,y1
print*,"Enter the 2nd vertex's value x and y"
read*,x2,y2
print*,"Enter the 3rd vertex's value x and y"
read*,x3,y3
a=sqrt((x1-x2)**2+(y1-y2)**2)
b=sqrt((x2-x3)**2+(y2-y3)**2)
c=sqrt((x3-x1)**2+(y3-y1)**2)
if((a+b)>c.and.(b+c)>a.and.(c+a)>b)then
print*,"Forms a triangle"
p=a+b+c
s=p/2.0
ar=sqrt(s*(s-a)*(s-b)*(s-c))
r=(a*b*c)/(4*ar)
cf=2*pi*r
ca=pi*(r**2)
10 format(1x,"Area of circle=",f10.3,/" Circumference=",f10.3)
print 10,ca,cf
else
print*,"Does not form a triangle"
end if
end do
end program

