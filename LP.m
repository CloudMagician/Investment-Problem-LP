clc,clear
k=0;
hold on
while a<0.05
    c=[0,0.024,0.016,0.045,0.026];
    A=diag([-0.05,-0.255,-0.21,-0.195,-0.18]);
    b=a*ones(4,1);
    Aeq=[1,1.015,1.02,1.055,1.06];
    beq=1;
    LB=zeros(5,1);
    %[x,Q]=linprog(-c,A,b,Aeq,beq,LB);
    x = fminimax(fun,x0,A,b,Aeq,beq,lb,ub);
    Q=-Q;
    plot(a,Q,'*k');
    a = a + 0.001;
end
xlabel('a'),ylabel('Q')