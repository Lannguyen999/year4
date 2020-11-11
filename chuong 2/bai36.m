clear all;
close all;
clc;
Tw = 2;     %do rong xung
Tp = Tw*2;
Np = 4;     %so luong xung muon xem
Ns = 1e6;
Timewindow = Np*Tp;
ts = Timewindow/(Ns - 1);
t = 0:ts:Timewindow;
Nsp = round(Tp/ts);

y = zeros(size(t));
for i=1:Ns
    x(i) = mod(t(i),Nsp*ts);
    if x(i) >=0 & x(i) <=Tp
        y(i) = 1 - abs((x(i) - Tw)/Tw);
    else
        y(i) = 0;
    end
end
plot(t,y);
grid on;