clear all;
close all;
Tp = input('Nhap chu ki xung = ');
Tw = Tp/2;
t = (-2*Tp:0.01:2*Tp);
p = zeros(size(t));
for i=1:length(t)
    if t(i) >= 0 & t(i) <= Tp
        p(i) = 1 - abs(t(i) - Tw)/Tw;
    end
end

plot(t,p,'red');
grid on;