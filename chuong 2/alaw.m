function [y,amax] = alaw(x,A)
%x: tin hieu dau vao
%A: he so nen theo luat A
%y: tin hieu sau khi nen theo luat A
amax = max(abs(x)); %gia tri bien do max cua tin hieu x
if abs(x) < 1/A
    y = (A * abs(x))/(1 + log(A));
else if abs(x) >= 1/A & abs(x) <= 1
    y = (1 + log(A*abs(x)))/(1 + log(A));
    end
end
y = y*sign(x);