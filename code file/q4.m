clear all
close all
clc
syms t time 
X = (10*exp(-0.2*time)).*(pls((time-7)/4));
H = (10.*exp(0.2*(t-time))).*(pls(( (t-time) -1)/2));
conv=int(X.*H,time,-inf,inf)
fplot(conv) 
axis([0 15 -10 100])
xlabel('Time (sec)')
ylabel('x(t)')