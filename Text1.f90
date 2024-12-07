program test01
implicit none
real::x1,x2,x3,y1,y2,y3,a,b,c,s,p,area
integer::i
do
print*,"Enter serial number "
read*,i
if(i==0)exit
print*,"Enter the first vertex value of x1 and y1"
read*,x1,y1
print*,"Enter the first vertex value of x2 and y2"
read*,x2,y2
print*,"Enter the first vertex value of x3 and y3"
read*,x3,y3
a=sqrt((x1-x2)**2+(y1-y2)**2)
b=sqrt((x2-x3)**2+(y2-y3)**2)
c=sqrt((x3-x1)**2+(y3-y1)**2)
if((a+b)>c.and.(b+c)>a.and.(c+a)>b)then
p=(a+b+c)
s=p/2
area=sqrt(s*(s-a)*(s-b)*(s-c))
10 format(2x," Area =",f10.3,2x,"perimeter=",f10.3)
print 10,area,p
else
print*,"Dose not form triangle"
end if
end do
end program test01