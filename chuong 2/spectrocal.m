function [f,Pf] = spectrocal(t,x)
%t - vector thoi gian
%x - mau dau vao
%f - vector tan so
%Pf - cac gia tri sap si PSD cua x

Ns = length(x); %so luong mau
Ts = t(2) - t(1); %chu ki lay mau

f = (-Ns/2:Ns/2 -1)/(Ns*Ts);
Pf = fft(x,Ns);
Pf = fftshift(Pf)/Ns;
Pf = abs(Pf).^2;