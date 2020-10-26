function[x,count] = bisection(a,b,saiso,F)
    count = 0;  %dem vong lap
    while(b-a) > saiso
    x = (a+b)/2;
    %fx = ((x^3)/3) +4*x^2 + x - 6;
    %fa = ((a^3)/3) +4*a^2 + a - 6;
    %fb = ((b^3)/3) +4*b^2 + b - 6;
    fx = F(x);
    fa = F(a);
    fb = F(b);
    if sign(fx) == sign(fa)
        a = x;
    else
        b = x;
    end;
    count = count + 1;  %tang so dem vong lap
end;