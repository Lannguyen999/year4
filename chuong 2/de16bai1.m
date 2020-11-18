T0 = input('Nhap chu ki ');
Ns = 1e2;
Ts = 2*T0/(Ns - 1);
t = -T0:Ts:T0;
w1 = zeros(size(t));
w2 = zeros(size(t));

for k = 1:Ns
    if abs(t(k)) < T0 
        w1(k) = cos(2*pi*t(k));
    end
    if abs(t(k)) < 0.5*T0 
        w2(k) = 1;
    end
end
y = conv(w1,w2,'same'); %tinh tich chap bang ham conv

figure(1)
plot(t,w1);
grid on
xlabel('Time');
ylabel('w1');
figure(2)
plot(t,w2);
grid on
xlabel('time');
ylabel('w2');
figure(3)
plot(t,y);
xlabel('time');
ylabel('y');
grid on;