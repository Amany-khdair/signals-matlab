clear all
close all
clc
t=-4:0.01:6;
x=amany(t+3)-amany(t-4);
plot(t,x)
axis([-4 5 0 1])
xlabel('Time (sec)')
ylabel('x(t)')
