%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
close all
clc
syms y(t)
x=diff(y,t)+30.0*y==20; 
case1 = y(0)==0;
y(t) = dsolve(x,case1)

t = 0:0.0001:10;
z = 20*(t>=0);

digits(4);
y = double (vpa(y(t)));

f = -200:1:200;
dt = t(2)-t(1);
for i = 1:length(f)
    X(i) = sum(z.*exp(-2*1i*pi*f(i)*t))*dt;
    Y(i) = sum(y.*exp(-2*1i*pi*f(i)*t))*dt;
    H(i) = Y(i)/X(i);
end

subplot (2,1,1);
plot(f,abs(H),'b')
ylabel("|H(F)|");
title("the magnitude");

subplot (2,1,2);
plot(f,angle(H),'b')
ylabel("{\angle}H(F)");
xlabel("f");
title("the phase");
