clc,clear
a=0;
hold on
while a<0.05
    c=[0.05,0.245,0.225,0.23,0.155];
    A=[zeros(4,1),diag([0.015,0.025,0.035,0.026])];
    b=a*ones(4,1);
    Aeq=[1,1.035,1.045,1.02,1.055];
    beq=1;
    LB=zeros(5,1);
    [x,Q]=linprog(-c,A,b,Aeq,beq,LB);
    Q=-Q;
    plot(a,Q,'*k');
    a = a + 0.001;
end
xlabel('a'),ylabel('Q')