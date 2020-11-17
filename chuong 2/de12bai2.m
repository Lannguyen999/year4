a = 2;
b = 3;
c = 9;
A = [a b c];
fs = 40*16;
Ts = 1/fs;
fmax = max(A);
Tmax = 1/fmin;
Ns = (2*Tmax)/Ts;
t = 0:Ts:2*Tmax;
figure(1)
y = a*cos(2*pi*a*t) + b*cos(2*pi*b*t) + c*cos(2*pi*c*t) + cos(2*pi*40*t);
plot(t,y);
figure(2)
f = (0:1/(2*Tmax):fs);
Yf = fft(y);
Yf = fftshift(Yf)/Ns;
Pf = abs(Yf).^2;
plot(f,Pf);