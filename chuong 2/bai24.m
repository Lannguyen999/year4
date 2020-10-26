a = 1;
r = 1;
y0 = 0;
tf = 2;
h = 0.25;
N = tf/h;
t(1) = 0;
y(1) = y0;
for i = 1:N
    t(i+1) = t(i) + h;
    y(i+1) = y(i) + h*(r - a*y(i));
end;
plot(t,y)
