function [t,y,code] = rzcode(d,R,Ns,type)
%t - output time vector
%y - output pulse vector
%d - input bit sequence
%R - bit rate
%Ns - number of samples

Tb = 1/R; 
Nb = length(d);
Timewindow = Nb*Tb;
ts = Timewindow/(Ns - 1);
t = 0:ts:Timewindow;
y = zeros(size(t));
code = [];

if nargin <= 3
    type = 'unipol';
end
for i = 1:Ns
    n = fix(t(i)/Tb) + 1;
    if n >= Nb
        n = Nb;
    end
    switch type
        case 'unipol'
            if mod(t(i),Tb) <= Tb/2
                y(i) = d(n);
                code(n) = d(n);
            else
                y(i) = 0;
            end
        case 'pol'
            if mod(t(i),Tb) <= Tb/2
                y(i) = 2*d(n) - 1;
                code(n) = 2*d(n) - 1;
            else
                y(i) = 0;
            end
    end
end