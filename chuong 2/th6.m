clear all;
close all;
clc;

Tw = 2;  %do rong xung
Tp = Tw; %chu ki xung
Np = input('Nhap so xung muon xem: '); %so xung can xem
Ns = 1e6; %so luong mau
    %1e6 = 10^6
Timewindow = Np*Tp;
ts = Timewindow/(Ns - 1);    %chu ki lay mau
t = 0:ts:Timewindow;
Nsp = round(Tp/ts); %so luong mau trong 1 chu ki xung

y = zeros(size(t));

for k = 1:Ns
    x(k) = mod(t(k),Nsp*ts);    
    if x(k) >= 0 & x(k) < Tw
        y(k) = 2 - x(k);        
    end
end

plot(t,y);

