close all
clear all
clc
t = -20:0.01:20;
nval = floor ((max(abs(t))+1)/3)+1;
X = 0;
for n = -nval:nval
Yn = pls((t-3*n)/2);
X = X + Yn;
end
%%%%%%plot the signal%%%%%%%%%
figure(2)
plot(t,X,'b','LineWidth',2)
xlabel('t')
ylabel('X(t)')
