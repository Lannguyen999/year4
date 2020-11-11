function[t,y,code,ts] = nrzcode(d,R,Ns,type)
%ham ve ma NRZ
%d - chuoi bit dau vao
%R - toc do bit
%Ns - so luong mau 
%type - loai ma (don cuc, luong cuc)
%t - vector thoi gian dau ra
%y - vector xung dau ra 
%code - chuoi ma dau ra

Tb = 1/R;   %chu ki bit
Nb = length(d); %so luong bit
Timewindow = Nb*Tb; %cua so thoi gian
ts = Timewindow/(Ns - 1); %chu ki lay mau
t = 0:ts:Timewindow;
y = zeros(size(t)); 
code = [];  %khoi tao vector ma dau ra

if nargin <= 3
    type = 'unipol';
end

for k = 1:Ns
    n = fix(t(k)/Tb) + 1; %fix - lay phan nguyen
    if n >= Nb
        n = Nb;
    end
    switch type
        case 'unipol'
            y(k) = d(n);
            code(n) = d(n);
        case 'pol'
            y(k) = 2*d(n) - 1;
            code(n) = 2*d(n) - 1;
    end
end
