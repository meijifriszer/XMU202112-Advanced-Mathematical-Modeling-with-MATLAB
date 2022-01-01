clc;
clear;
syms x y;
f=0.2*x^2+0.1*y^2+sin(x+y);
Grad_x=diff(f,x);
Grad_y=diff(f,y);

X=-2*pi:0.1:2*pi;
Y=X;
[x,y]=meshgrid(X,Y);
z=0.2.*x.^2+0.1.*y.^2+sin(x+y);
contour(X,Y,z,50)
xlabel('x'),ylabel('y')
hold on;

a=0.04;

x=-4;y=-4;
xline=[x];
yline=[y];
Gx=eval(Grad_x);
Gy=eval(Grad_y);
while(abs(Gx)>10^(-6)&&abs(Gy)>10^(-6))
    Gx=eval(Grad_x);
    Gy=eval(Grad_y);
    x=x-a*Gx;
    y=y-a*Gy;
    xline=[xline,x];
    yline=[yline,y];
end
x1=x
y1=y
plot(xline,yline,'--')
plot(x,y,'.r');
hold on;

x=2;y=-2;
xline=[x];
yline=[y];
Gx=eval(Grad_x);
Gy=eval(Grad_y);
while(abs(Gx)>10^(-6)&&abs(Gy)>10^(-6))
    Gx=eval(Grad_x);
    Gy=eval(Grad_y);
    x=x-a*Gx;
    y=y-a*Gy;
    xline=[xline,x];
    yline=[yline,y];
end
x2=x
y2=y
plot(xline,yline,'--')
plot(x,y,'.r');
hold on;

x=4;y=4;
xline=[x];
yline=[y];
Gx=eval(Grad_x);
Gy=eval(Grad_y);
while(abs(Gx)>10^(-6)&&abs(Gy)>10^(-6))
    Gx=eval(Grad_x);
    Gy=eval(Grad_y);
    x=x-a*Gx;
    y=y-a*Gy;
    xline=[xline,x];
    yline=[yline,y];
end
x3=x
y3=y
plot(xline,yline,'--')
plot(x,y,'.r');
