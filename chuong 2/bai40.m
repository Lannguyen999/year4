clear all;
close all;
clc;
x = randi([0 3],1,1000);
b = pskmod(x,4);
SNRdB = 20; % dB
SNR = 10^(SNRdB/10);
varn = var(b)/SNR; % Tinh phuong sai
xnoise = addnoise(b,varn);
scatterplot(b);
scatterplot(xnoise);
bd = pskdemod(xnoise,2);
