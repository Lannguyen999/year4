clc;
clear all;
R = 100*10^6;
type = 'pol';
Ns = 10^6;
d = randi([0 1],1,5000);

[t,y,code,ts] = nrzcode(d,R,Ns,type);
beta = 0.5;
Rb = 300e6;
x = raised_cos(y,Rb,ts,beta);
time = t/1e-6;
figure(1)
plot(time,y,'red',time,x,'blue');
grid on;
ylabel('Amplitude');
xlabel('Time(\mus)');
axis([1 1.2 -1.2 1.2]);
