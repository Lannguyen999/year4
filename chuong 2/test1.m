close all;
clear all;
clc;
Tw = 2;     %do rong xung
Tp = Tw;    %chu ki xung
Np = 4;     %so xung muon quan sat
Ns = 1e6;   %so luong mau
Timewindow = Np*Tp;     %Tong thoi gian Np xung
ts = Timewindow/(Ns - 1);   %chu ki lay mau
t = 0:ts:Timewindow;    %truc thoi gian
Nps = round(Tp/ts);     %so mau trong khoang thoi gian Tp

y = zeros(size(t));

for k = 1:Ns
    x(k) = mod(t(k),Nps*ts);    
    if x(k) >= 0 & x(k) < Tw
        y(k) = 2 - x(k);        
    end
end

plot(t,y);