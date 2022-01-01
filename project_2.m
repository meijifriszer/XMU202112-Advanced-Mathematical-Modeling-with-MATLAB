clc;
clear;
H=[0.4 0 0;0 0.4 0;0 0 0.4];
f=[62;58;54];
A=[-1 0 0;-1 -1 0];
b=[-40;-100];
aeq=[1,1,1];
beq=[180];
ub=[100;100;100];
lb=[40;0;0];
[x,fval]=quadprog(H,f,A,b,aeq,beq,lb,ub) ;
x
fval=fval-560

