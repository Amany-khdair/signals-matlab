clear all
close all
clc
syms  z t
y1=sin(200*pi*t);
subplot(2,2,1);
ezplot(y1,[-0.03 0.03]);
title('y1');
xlabel('t');
ylabel('x(t)');
%%%%%%%%%%%%%%%%%%%%
y2=cos(500*pi*t);
subplot(2,2,2);
ezplot(y2,[-0.03 (0.03)]);
title('y2');
xlabel('t');
ylabel('x(t)');
%%%%%%%%%%%%%%%%%%%%
z = y1*y2;
subplot(2,2,3);
ezplot(z,[-0.03 0.03]);
title('z(t)');
xlabel('t');
ylabel('x(t)');