clc,clear
a=0.025;
hold on

c=[0.05,0.255,0.21,0.195,0.18];
A=[zeros(4,1),diag([0.024,0.016,0.045,0.026])];
b=a*ones(4,1);
Aeq=[1,1.015,1.02,1.055,1.06];
beq=1;
LB=zeros(5,1);
[x,Q]=linprog(-c,A,b,Aeq,beq,LB);
Q=-Q;
disp(Q);
disp(x);