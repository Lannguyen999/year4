clc;
clear all;
close all;
d = [0 1 1 0 1 0 1 0];
R = 1e6;
Ns = 256;
type = 'unipol';
[t,y,code] = rzcode(d,R,Ns,type);
time = t/1e-6;
plot(time,y,'red');
ylabel('Amplitude');
xlabel('Time(us)');
grid on
axis([0 8 -1.2 1.2]);