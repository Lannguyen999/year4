function [tp] = tichphan(a,b,f,N)
 h = abs(a-b)/N;
 tp = f(a + h/2);
 for k = 2:N
     xi = a + (k - 1/2)*h;
     tp = tp + f(xi);
 end
 tp = tp*h;