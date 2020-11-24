close all;
clear all;
clc;
d = randi([0 1],1,100); % chuoi du lieu vao
R = 100*10^6;
type = 'pol';
Ns = 2000;
% ma hoa NRZ
[t,y,code,ts] = nrzcode(d,R,Ns,type);
% dua vao bo loc raised cosine
xp = raised_cos(y,300e6,ts,0.5);
% truyen qua kenh AWGN
SNRdB = 20; % dB
SNR = 10^(SNRdB/10);
varn = var(xp)/SNR; % Tinh phuong sai
xnoise = addnoise(xp,varn);
% Ve hinh
plot(t,xp,'r-',t,xnoise,'b-');grid;
axis([0 1e-7 -2.5 2.5]);
xlabel('time');
ylabel('Amplitude');
eyediagram(xp,20);
eyediagram(xnoise,20);
