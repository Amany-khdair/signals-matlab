clear all
close all
clc
t=0:0.001:16;
x2=amany(t-4)+ramp(t-4)-2*ramp(t-7)+ramp(t-13);
plot(t,x2)
xlabel('Time (sec)')
ylabel('x(t)')