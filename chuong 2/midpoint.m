function[tp] = midpoint(a,b,N)
    h = (a - b)/N;
    tp = 0;
    for k = 1:N
    x = b + (k - 1/2)*h;
    f = (4*x^3)*(2*exp(x))*cos(x);
    tp = tp + f;
    end;
    tp = tp * h;