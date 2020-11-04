%tham so co ban
fc = 300;    %tan so song mang [Hz]
phi_c = 0;   %pha cua song mang[rad]
N = 2^10;    %tong so mau
T0 = 0;      %thoi diem bat dau
T_end = 1/300;    %thoi diem ket thuc
Ts = (T_end - T0)/(N-1); %chu ki lay mau
fs = 1/Ts;  %tan so lay mau
k = 1;     %chi so dieu che
t = T0:Ts:T_end; 
%tin hieu ban tin
s = 2*cos(20*pi*t + pi/4) + cos(30*pi*t);
%tin hieu song mang
c = cos(2*pi*fc*t + phi_c);
%dieu che
y = (1 + k*s).*c;
plot(t,y);