function [y,amax] = mulaw(x,mu)
% Hàm nén lu?t mu
% y : chu?i tín hi?u sau khi nén
% x : chu?i tín hi?u tr??c khi nén
% mu : h? s? nén mu
amax = max(abs(x));
%y = sign(x).*(amax*log(1 + mu*abs(x)/amax)/log(1 + mu));
xn = x/amax;
y = sign(x).*log(1 + mu * abs(xn))/log(1+mu);
y = y*amax;