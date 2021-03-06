close all;
clear all;
clc;
a = 9;
Tp = 1/a;
Np = 3;
Ns = 1e6;
Timewindow = Np*Tp;
ts = Timewindow/(Ns-1);
t = (0:ts:Timewindow);
x = find(t == Tp/2);
y = exp(-0.5*t).*cos(2*pi*t*9);
plot(t,y,'blue');