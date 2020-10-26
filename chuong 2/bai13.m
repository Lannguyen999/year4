%==========================================================================
    %Bai 13
    %Author: Lan
%==========================================================================
%Dat tham so
w = (0.01:0.01:5)
jw = j*w
H1 = 1./jw
H2 = 1./(1+jw)
%==========================================================================
%Do thi ham H1
figure(1)
subplot(1,2,1)
plot(w,abs(H1),'red')
title('Do thi bien do ham H1')
xlabel('w')
ylabel(' bien do cua H1')
axis auto
grid on
%Do thi ham H2
subplot(1,2,2)
plot(w,abs(H2),'green')
title('Do thi bien do ham H2')
xlabel('w')
ylabel('bien do cua H2')
axis auto
grid on
%==========================================================================
%dung ham semilogx, semilogy, loglog
figure(2)
subplot(1,2,1)
semilogx(w, abs(H1), 'red')
title('Do thi ham H1 theo ham semilogx')
grid on
subplot(1,2,2)
semilogx(w, abs(H2), 'blue')
title('Do thi ham H2 theo ham semilogx')
grid on
%==========================================================================
figure(3)
subplot(1,2,1)
semilogy(w, abs(H1), 'red')
title('Do thi ham H1 theo ham semilogy')
grid on
subplot(1,2,2)
semilogy(w, abs(H2), 'blue')
title('Do thi ham H2 theo ham semilogy')
grid on
%==========================================================================
figure(4)
subplot(1,2,1)
loglog(w, abs(H1), 'red')
title('Do thi ham H1 theo ham loglog')
grid on
subplot(1,2,2)
loglog(w, abs(H2), 'blue')
title('Do thi ham H2 theo ham loglog')
grid on
%==========================================================================