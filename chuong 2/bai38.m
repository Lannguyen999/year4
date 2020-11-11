clc;
clear all;
R = 100*10^6;
type = 'pol';
Ns = 10^6;
d = randi([0 1],1,5000);

[t,y,code] = nrzcode(d,R,Ns,type);
time = t/(10^-6);
plot(time,y,'red');
grid on;
ylabel('Amplitude');
xlabel('Time(us)');
axis([1 1.2 -1.2 1.2]);

