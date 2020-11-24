function [y,amax] = mulaw(x,mu)
% H�m n�n lu?t mu
% y : chu?i t�n hi?u sau khi n�n
% x : chu?i t�n hi?u tr??c khi n�n
% mu : h? s? n�n mu
amax = max(abs(x));
%y = sign(x).*(amax*log(1 + mu*abs(x)/amax)/log(1 + mu));
xn = x/amax;
y = sign(x).*log(1 + mu * abs(xn))/log(1+mu);
y = y*amax;