clc;
close all;
clear all;

Tw = 1;
Ns = 1e6;
Tp = Tw;
Np = 4;
Timewindow = Np*Tp;
ts = Timewindow/(Ns-1);
t = 0:ts:Timewindow;
Nsp = round(Tp/ts);

y = zeros(size(t));

for i = 1:Ns
    x(i) = mod(t(i),Nsp*ts);
    if x(i) > 0 & x(i) <= 0.5
        y(i) = 1;
    else if x(i) > 0.5 & x(i) <= 1
            y(i) = 0;
        end
    end
end

plot(t,y,'red');
grid on;