%a = input('Nhap so dau: ');
%b = input('Nhap so cuoi: ');
%f = @(x) x^2 - 9;
function [x] = timnghiem(a,b,f)
fa = f(a);
fb = f(b);
if sign(fa) == sign(fb)
   x = [];
   disp('null');
    return;
end

while (b-a)/b > eps
    x = (a+b)/2;
    fx = f(x);
    if abs(fx) < eps
        break;
    else
        if sign(fx) == sign(fa)
            a = x;
            fa = fx;
        else
            b = x;
            fb = fx;
        end
    end
end
disp('Nghiem can tim: ');
disp(x);