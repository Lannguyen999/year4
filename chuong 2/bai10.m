t = (0:0.1:10)
s1 = sin(2*pi*5.3*t)
res = s1.^2 %binh phuong tung phan tu
plot(t,res,'blue')
grid on
hold on 
stem(t,res,'blue')